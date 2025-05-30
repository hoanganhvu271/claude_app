import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchFrameTotal extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTapSearch;

  const SearchFrameTotal({super.key, this.onChanged, this.onTapSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFD9D9D9), width: 1),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color(0x3F000000),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Nhập tên khách sạn...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Color(0xFF65462D),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
                onChanged: onChanged,
              ),
            ),
            GestureDetector(
              onTap: onTapSearch,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SvgPicture.string(
                  '''<svg width="49" height="49" viewBox="0 0 49 49" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M48 48L38.8611 38.8611M37.5556 19.2778C37.5556 21.678 37.0828 24.0548 36.1642 26.2724C35.2457 28.4899 33.8994 30.5049 32.2021 32.2021C30.5049 33.8994 28.4899 35.2457 26.2724 36.1642C24.0548 37.0828 21.678 37.5556 19.2778 37.5556C16.8775 37.5556 14.5007 37.0828 12.2832 36.1642C10.0656 35.2457 8.05069 33.8994 6.35344 32.2021C4.65619 30.5049 3.30986 28.4899 2.39131 26.2724C1.47277 24.0548 1 21.678 1 19.2778C1 14.4302 2.92569 9.78119 6.35344 6.35344C9.78119 2.92569 14.4302 1 19.2778 1C24.1253 1 28.7744 2.92569 32.2021 6.35344C35.6299 9.78119 37.5556 14.4302 37.5556 19.2778Z" stroke="#65462D" stroke-width="2" stroke-linecap="round"/>
                  </svg>''',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
