import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_extensions/super_extensions.dart';
import 'package:ui_challenge/constants/sizedbox_constants.dart';
import 'package:ui_challenge/constants/text%20style/text_style.dart';
import 'package:ui_challenge/ui%20components/custom_button.dart';

import '../constants/color_constants.dart';
import '../providers/providers.dart';
import '../ui components/custom_alert.dart';
import '../ui components/custom_snackbar.dart';
import '../ui components/display_card.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              buildHeight(20),
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=3560&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),
              buildHeight(10),
              Center(
                child: Text(
                  ref.watch(nameProvider),
                  style: UiTextStyle.heading.medium,
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomAlert(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              onChanged: (value) =>
                                  ref.read(nameProvider.notifier).state = value,
                              decoration:
                                  const InputDecoration(hintText: "Full Name"),
                            ),
                            buildHeight(20),
                            CustomButton(
                              onTap: () {
                                ref.watch(nameProvider) == "Full Name"
                                    ? ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                            customSnackbar("Fill in a name..."))
                                    : Navigator.pop(context);
                              },
                              child: const Text("Submit"),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Edit",
                    style: UiTextStyle.label.extraSmall,
                  ),
                ),
              ),
              buildHeight(50),
              Text(
                "Liked Properties",
                style: UiTextStyle.heading.medium,
              ),
              buildHeight(20),
              ref.watch(likeController).isEmpty
                  ? Text(
                      "You have liked no Properties!",
                      style: UiTextStyle.title.mediumRegular,
                    )
                  : ListView.builder(
                      itemCount: ref.watch(likeController).length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return DisplayCard(
                          screenWidth: context.screenWidth,
                          index: ref.watch(likeController)[index],
                        );
                      },
                    ),
              const Spacer(),
              SizedBox(
                height: 50,
                child: CustomButton(
                    onTap: () => showDialog(
                          context: context,
                          builder: (context) => CustomAlert(
                              content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Are you Sure?",
                                style: UiTextStyle.heading.small,
                              ),
                              buildHeight(20),
                              Text(
                                "Are you sure you want to exit such an amazing application?",
                                style: UiTextStyle.body.mediumRegular,
                              ),
                              buildHeight(50),
                              CustomButton(
                                  onTap: () => exit(0),
                                  child: Text(
                                    "Exit Application",
                                    style:
                                        UiTextStyle.heading.extraSmall.copyWith(
                                      color: ColorConstant.white,
                                    ),
                                  ))
                            ],
                          )),
                        ),
                    child: Center(
                      child: Text(
                        "Exit App",
                        style: UiTextStyle.heading.extraSmall.copyWith(
                          color: ColorConstant.white,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
