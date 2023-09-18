import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';

class NewArticleView extends StatefulWidget {
  const NewArticleView({super.key});

  @override
  State<NewArticleView> createState() => _NewArticleViewState();
}

class _NewArticleViewState extends State<NewArticleView> {
  final quill.QuillController _controller = quill.QuillController.basic();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        titleSpacing: 40,
        toolbarHeight: 100,
        centerTitle: false,
        title: Text(
          'New Article',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(
                right: SizeConfig.width(50),
              ),
              child: SvgPicture.asset(SvgPath.download)),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SingleChildScrollView(
          child: SizedBox(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'The art of being an artist',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const Divider(
                color: AppColors.darkBlue,
              ),
              Space.height(16),
              Text(
                'Simplified products',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const Divider(
                color: AppColors.darkBlue,
              ),
              Space.height(60),
              Text(
                'Article Content',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Divider(
                color: AppColors.darkBlue,
              ),
              SizedBox(
                height: SizeConfig.height(244),
                child: quill.QuillEditor(
                  focusNode: FocusNode(),
                  scrollController: ScrollController(),
                  scrollable: true,
                  padding: EdgeInsets.zero,
                  autoFocus: false,
                  expands: true,
                  controller: _controller,
                  readOnly: false,
                ),
              ),
              quill.QuillToolbar.basic(
                controller: _controller,
              )
            ]),
          ),
        ),
      )),
    );
  }
}
