

import 'package:flutter/material.dart';
import 'package:untitled1/ui/theme/theme.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60),
      height: 306,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x14000014),
            blurRadius: 16,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Expanded(child: Column(
          children: [
            // Верхняя часть с закрытием и выходом из профиля
            Expanded(child: 
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.customGreen),
                    onPressed: () {
                      // Действие при нажатии на кнопку закрытия
                    },
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(            
                        'assets/images/user_avatar.png',            
                        width: 110,            
                        height: 110,            
                        fit: BoxFit.cover,            
                      ),
                      Text("Екатерина", style: lightTheme.textTheme.titleLarge),
                    ],
                  ),
                  
                  IconButton(
                    icon: Icon(Icons.exit_to_app_rounded, color: Colors.customGreen),
                    onPressed: () {
                      // Действие при нажатии на кнопку закрытия
                    },
                  ),
                ],
              ),
            ),
            
            
            // SizedBox(height: 20), // Промежуток между верхней частью и фотографией пользователя
            // Фотография пользователя
            // Image(image: AssetImage('assets/images/user_avatar.png')),
            // SizedBox(height: 36), // Промежуток между фотографией и таббаром
            
            // SizedBox(height: 20),
          ]
        ),
    ));
  }
}