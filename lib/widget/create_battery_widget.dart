import 'package:battery_checker_v01/model/db_models/battery_register_model.dart';
import 'package:flutter/material.dart';

class CreateBatteryWidget extends StatefulWidget {
  final Battery? battery;
  final ValueChanged<String> onSubmit;

  const CreateBatteryWidget({
    Key? key,
    this.battery,
    required this.onSubmit,
  }) : super(key: key);

  @override
  State<CreateBatteryWidget> createState() => _CreateBatteryWidgetState();
}

class _CreateBatteryWidgetState extends State<CreateBatteryWidget> {
  final controller = TextEditingController();
  final formkey = GlobalKey<FormState>;

  @override
  void initState() {
    super.initState();
    controller.text = widget.battery?.batteryId ?? "";
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.battery != null;
    return AlertDialog(
      title: Text(isEditing ? "Edit Battery" : "Add Battery"),
      content: const Text("""Reprehenderit eu quis irure laborum pariatur fugiat anim. 
      Ipsum nisi sit dolore cupidatat ad commodo. Ex reprehenderit culpa est aliquip 
      id incididunt officia consectetur eu ipsum sit. Ea elit ad consectetur ea quis 
      nisi reprehenderit aliqua commodo ex incididunt. Dolor eu laborum consectetur 
      pariatur consectetur adipisicing consectetur occaecat reprehenderit voluptate ea 
      qui. Consectetur amet commodo do proident deserunt ut irure."""),
      actions: [TextButton(onPressed: () {
         Navigator.pop(context);
      }, child: const Text("Ok"))],
    );
  }
}
