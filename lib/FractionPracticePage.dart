import 'package:flutter/material.dart';
class FractionPracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('练习内容'),
        backgroundColor: Color.fromRGBO(100, 87, 239, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildPracticeItem('纯加法表达式', '1 + 2 + 3'),
            _buildPracticeItem('纯减法表达式', '10 - 3 - 2'),
            _buildPracticeItem('纯乘法表达式', '2 × 3 × 4'),
            _buildPracticeItem('纯除法表达式', '100 ÷ 2 ÷ 5'),
            _buildPracticeItem('混合运算表达式', '2 + 3 × 4 - 6 ÷ 2'),
            _buildPracticeItem('带括号的表达式', '(2 + 3) × 4'),
            _buildPracticeItem('嵌套运算表达式', '(1 + (2 × (3 - 4))) ÷ 5'),
          ],
        ),
      ),
    );
  }

  Widget _buildPracticeItem(String title, String expression) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                expression,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.orange,
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ],
      ),
    );
  }
}