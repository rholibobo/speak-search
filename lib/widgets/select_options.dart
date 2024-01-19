import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';
import 'package:flash/flash.dart';

class SelectOption extends StatefulWidget {
  const SelectOption(this.title, this._onSelectPress, this._isDisabled,
      {super.key});
  final String title;
  // final Function(double) _onSelectPress;
  final ValueChanged<int> _onSelectPress;
  // final bool _isDisabled;
  final Set<int> _isDisabled;

  @override
  State<SelectOption> createState() => _SelectOptionState();
}

class _SelectOptionState extends State<SelectOption> {
  bool _isTapped = false;
  int buttonValue = 0;

  void _handleSelectOption() {
    setState(() {
      _isTapped = !_isTapped;
      widget._onSelectPress(buttonValue);
    });
  }

  void _stopSelection() {
    _isTapped = false;
    widget._onSelectPress(buttonValue);
    _showCustomFlash();
  }

  void _showCustomFlash() {
    showFlash(
      context: context,
      duration: const Duration(seconds: 2),
      persistent: true,
      builder: (_, controller) {
        return Flash(
          controller: controller,
          position: FlashPosition.top,
          child: DefaultTextStyle(
            style: const TextStyle(color: Color.fromARGB(255, 254, 254, 254)),
            child: FlashBar(
              controller: controller,
              backgroundColor: const Color.fromARGB(255, 163, 50, 41),
              content: const Text(
                'You can only select 6 options',
                style: TextStyle(color: AppColor.whiteColor),
              ),
              indicatorColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          // onTap: widget._isDisabled ? _stopSelection : _handleSelectOption,
          onTap: widget._isDisabled.length == 6
              ? _stopSelection
              : _handleSelectOption,
          child: DottedBorder(
            color:_isTapped ? const Color.fromRGBO(136,58,47,1) : AppColor.offRed,
            strokeWidth: _isTapped ? 5 : 1,
            dashPattern: _isTapped ? const [500,1] : const [10,3],
            borderType: BorderType.RRect,
            radius: const Radius.circular(13),
            padding: EdgeInsets.zero,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                padding: EdgeInsets.all(deviceWidth(context) * 0.025),
                decoration: BoxDecoration(
                    color:
                        _isTapped ? AppColor.selectColor : Colors.transparent,),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 14,
                      color: _isTapped
                          ? AppColor.whiteColor
                          : AppColor.primaryTextColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
