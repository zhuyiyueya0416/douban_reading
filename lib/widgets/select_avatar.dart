import 'dart:io';

import 'package:douban_reading/states/auth_provider.dart';
import 'package:douban_reading/widgets/show_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class SelectAvatar extends StatefulWidget {
  final double size;
  final String? initialAvatar;
  final Function(String)? onAvatarSelected;

  const SelectAvatar({
    Key? key,
    this.size = 100,
    this.initialAvatar,
    this.onAvatarSelected,
  }) : super(key: key);

  @override
  State<SelectAvatar> createState() => _SelectAvatarState();
}

class _SelectAvatarState extends State<SelectAvatar> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        imageQuality: 80,
        maxHeight: 500,
        maxWidth: 500,
      );
      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });

        if (widget.onAvatarSelected != null) {
          widget.onAvatarSelected!(pickedFile.path);
        }
        try {
          Provider.of<AuthProvider>(
            context,
            listen: false,
          ).updateUserAvatar(pickedFile.path);
          showToast(context, '头像更新成功', isSuccess: true);
        } catch (e) {
          showToast(context, '头像更新失败，请重试', isSuccess: false);
        }
      }
    } catch (e) {
      showToast(context, '选择图片失败，请重试', isSuccess: false);
    }
  }

  void _showImagePickerOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('拍照'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('从相册选择'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('取消'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AuthProvider>(context, listen: false).user;
    String avatarPath =
        widget.initialAvatar ?? user?.avatar ?? 'assets/tx/tx1.jpg';
    return InkWell(
      onTap: _showImagePickerOptions,
      borderRadius: BorderRadius.circular(widget.size / 2),
      child: ClipOval(
        child: _selectedImage != null
            ? Image.file(
                _selectedImage!,
                width: widget.size,
                height: widget.size,
                fit: BoxFit.cover,
              )
            : avatarPath.startsWith('http')
            ? Image.network(
                avatarPath,
                width: widget.size,
                height: widget.size,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/tx/tx1.jpg',
                    width: widget.size,
                    height: widget.size,
                    fit: BoxFit.cover,
                  );
                },
              )
            : avatarPath.startsWith('/')
            ? Image.file(
                File(avatarPath),
                width: widget.size,
                height: widget.size,
                fit: BoxFit.cover,
              )
            : Image.asset(
                avatarPath,
                width: widget.size,
                height: widget.size,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
