import 'package:flutter/material.dart';
import 'FractionPracticePage.dart';

class LearningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6F0FF),
      appBar: AppBar(
        title: Text('小猴天天练', style: TextStyle(color: Color(0xFFa6fff2))),
        backgroundColor: Color(0xFF5e63b6),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCalendarSection(),
              SizedBox(height: 20),
              _buildDailyTaskSection(context),
              SizedBox(height: 20),
              _buildImageSection(), // New layout section
              SizedBox(height: 20),
              _buildRewardSection(),
              SizedBox(height: 20),
              _buildBottomIcons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.calendar_today, color: Colors.orange),
            SizedBox(width: 8),
            Text(
              '学习进度更新啦，挑战+20金币!',
              style: TextStyle(fontSize: 16, color: Colors.blueAccent),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(7, (index) {
            return Column(
              children: [
                CircleAvatar(
                  backgroundColor: index == 0 ? Colors.purple : Colors.grey,
                  child: Text(index == 0 ? '今' : '${24 + index}'),
                ),
                SizedBox(height: 5),
                Text(['六', '日', '一', '二', '三', '四', '五'][index]),
              ],
            );
          }),
        ),
      ],
    );
  }

  Widget _buildDailyTaskSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '今日任务',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              '去完成 +20',
              style: TextStyle(fontSize: 16, color: Colors.orange),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '数学',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '语文',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('连加、连减（第一练）', style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FractionPracticePage()), // 替换为实际的成功页面
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                child: Text('继续练习', style: TextStyle(color: Color(0XFFebfffa))),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildImageCard(
          icon: Icons.close,
          title: '收集错题',
          subtitle: '智能错题本',
          backgroundColor: Colors.lightBlueAccent,
        ),
        _buildImageCard(
          icon: Icons.auto_fix_high,
          title: '错题练习',
          subtitle: '快速查缺补漏',
          backgroundColor: Colors.purpleAccent,
        ),
      ],
    );
  }

  Widget _buildImageCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color backgroundColor,
  }) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.black54)),
        ],
      ),
    );
  }

  Widget _buildRewardSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '领5000金币，已打卡 0/35 天',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            return CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[200],
              child: Text('${index + 1}天'),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildBottomIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildBottomIcon(Icons.assignment, '错题本', iconColor: Colors.red),
        _buildBottomIcon(Icons.bar_chart, '学习榜', iconColor: Colors.blue),
        _buildBottomIcon(Icons.card_giftcard, '金币奖励', iconColor: Colors.green),
        _buildBottomIcon(Icons.assessment, '学习报告', iconColor: Colors.orange),
      ],
    );
  }

  Widget _buildBottomIcon(IconData icon, String label, {Color iconColor = Colors.orange}) {
    return Column(
      children: [
        Icon(icon, size: 40, color: iconColor),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
