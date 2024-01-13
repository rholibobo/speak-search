import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:speaksphere/utils/colors.dart';
import 'package:speaksphere/utils/media_query.dart';

class SelectOption extends StatefulWidget {
  const SelectOption(this.title, this._onSelectPress, this._isDisabled,
      {super.key});
  final String title;
  final Function(double) _onSelectPress;
  final bool _isDisabled;

  @override
  State<SelectOption> createState() => _SelectOptionState();
}

class _SelectOptionState extends State<SelectOption> {
  bool _isTapped = false;
  double buttonValue = 0.0;

  void handleSelectOption() {
    setState(() {
      _isTapped = !_isTapped;
    });
    widget._onSelectPress(buttonValue);
  }

  void stopSelection() {
    _isTapped = false;
    widget._onSelectPress(buttonValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget._isDisabled ? stopSelection : handleSelectOption,
          
          child: DottedBorder(
            color: AppColor.offRed,
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                padding: EdgeInsets.all(deviceWidth(context) * 0.02),
                decoration: BoxDecoration(
                    color:
                        _isTapped ? AppColor.selectColor : Colors.transparent),
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
