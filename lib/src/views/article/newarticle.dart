import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tags_x/flutter_tags_x.dart';

import '../../core/core.dart';

class NewArticleView extends StatefulWidget {
  const NewArticleView({super.key});

  @override
  State<NewArticleView> createState() => _NewArticleViewState();
}

class _NewArticleViewState extends State<NewArticleView> {
  final quill.QuillController _controller = quill.QuillController.basic();
  final ScrollController _scrollController = ScrollController();
  final List<String> content = [
    'Art',
    'Design',
    'Culture',
    'Production',
  ];
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
                color: AppColors.darkGrey,
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
                color: AppColors.darkGrey,
              ),
              Space.height(10),
              Tags(
                  runSpacing: 4,
                  alignment: WrapAlignment.start,
                  itemCount: content.length,
                  textField: TagsTextField(
                    hintText: 'Add Tags',
                    width: 100,
                    autofocus: false,
                    textStyle: Theme.of(context).textTheme.bodySmall!,
                    hintTextColor: AppColors.blue,
                    padding: EdgeInsets.zero,
                    inputDecoration: const InputDecoration(
                        border: InputBorder.none, isDense: true),
                  ),
                  itemBuilder: (int index) {
                    final tag = content[index];
                    return Tooltip(
                      message: tag,
                      child: ItemTags(
                        activeColor: AppColors.white,
                        elevation: 3,
                        textActiveColor: AppColors.blue,
                        removeButton: ItemTagsRemoveButton(
                          color: Colors.blue,
                          backgroundColor: AppColors.blue.withOpacity(0.2),
                        ),
                        border: Border.all(color: AppColors.blue, width: 2),
                        title: tag,
                        index: index,
                      ),
                    );
                  }),
              Space.height(32),
              Text(
                'Article Content',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Divider(
                color: AppColors.darkGrey,
              ),
              SizedBox(
                height: SizeConfig.height(230),
                child: quill.QuillEditor(
                  focusNode: FocusNode(),
                  scrollController: _scrollController,
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
