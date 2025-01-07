import 'package:flutter/material.dart';
import 'package:hyper_supabase/core.dart';

class StreamFutureList<T> extends StatefulWidget {
  StreamFutureList({
    this.future,
    super.key,
    this.isEditMode = false,
    this.adaptiveMode = true,
    this.itemBuilder,
    this.itemsBuilder,
    this.listener,
    this.onEmpty,
    this.padding,
    this.shrinkWrap = false,
    this.actionButton = false,
    this.headers = const [],
    this.onLoadMore,
  });
  final bool isEditMode;
  final bool adaptiveMode;
  final bool actionButton;
  final Future? future;
  final List<ListRowHeaderItem> headers;
  final Function(dynamic item, int index)? itemBuilder;
  final Function(dynamic items)? itemsBuilder;
  final Function(int itemCount)? listener;
  final Function? onEmpty;
  // Important: Default padding must be 0.0
  // Or you will have UI/UX Issue
  final EdgeInsets? padding;
  final bool shrinkWrap;
  final Function? onLoadMore;

  @override
  State<StreamList> createState() => _StreamListState<T>();
}

class _StreamListState<T> extends State<StreamList> {
  bool loading = true;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      var offset = scrollController.offset;
      var maxScroll = scrollController.position.maxScrollExtent;
      if (offset == maxScroll) {
        printg("[Pagination] Load more");
        widget.onLoadMore?.call();
        // setState(() {});
      } else {
        setState(() {});
      }
    });
    getData();
  }

  List<T> values = [];
  void getData() async {
    loading = true;
    if (mounted) setState(() {});

    var response = await widget.future;

    values = List.from(response);

    loading = false;
    if (mounted) setState(() {});
  }

  Padding onItemsBuilder(List<T> items) {
    bool isTablet = MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 850;
    bool isDesktop = MediaQuery.of(context).size.width >= 1100;
    bool isMobile = MediaQuery.of(context).size.width < 850;
    bool tableMode = isDesktop || isTablet;

    if (widget.adaptiveMode == false) {
      tableMode = true;
    }

    if (isMobile) {
      //Mobile version
      //return Container();
    }

    if (tableMode) {
      //Desktop version
      return Padding(
        padding: widget.padding ?? const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  ...List.generate(
                    widget.headers.length,
                    (index) {
                      var header = widget.headers[index];

                      var (flex, width, height) =
                          getFlexWidthHeightByLabelValue(
                        header.label,
                        null,
                      );

                      return Expanded(
                        flex: flex,
                        child: Container(
                          width: width,
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                            // color: Colors
                            //     .green[900 - (index < 8 ? index * 100 : 0)]!,
                            color: secondaryColor,
                            border: Border.all(
                              width: 0.0,
                              color: secondaryColor,
                            ),
                          ),
                          child: Text(
                            "${header.label}",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  if (widget.actionButton)
                    Expanded(
                      flex: 0,
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          // color: Colors
                          //     .green[900 - (index < 8 ? index * 100 : 0)]!,
                          color: secondaryColor,
                          border: Border.all(
                            width: 0.0,
                            color: secondaryColor,
                          ),
                        ),
                        child: const Text(
                          "Actions",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ).amMoveAndFade,
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: items.length,
                shrinkWrap: widget.shrinkWrap,
                physics:
                    widget.shrinkWrap ? const NeverScrollableScrollPhysics() : null,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    child: widget.itemBuilder!(item, index),
                  );
                },
              ),
            ),
          ],
        ),
      );
    } else {
      ///Mobile version
      return Padding(
        padding: widget.padding ?? const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Expanded(
              flex: widget.shrinkWrap == true ? 0 : 1,
              child: ListView.builder(
                controller: scrollController,
                itemCount: items.length,
                shrinkWrap: widget.shrinkWrap,
                physics:
                    widget.shrinkWrap ? const NeverScrollableScrollPhysics() : null,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return widget.itemBuilder!(item, index) as Widget;
                },
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loading) return Container();

    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onLongPress: () async {
          showLoading();
          await Future.delayed(const Duration(seconds: 1));
          hideLoading();
        },
        child: RefreshIndicator(
          onRefresh: () {
            setState(() {});
            return Future.value(true);
          },
          child: Column(
            children: [
              if (widget.itemsBuilder == null)
                Expanded(
                  child: Builder(
                    builder: (context) {
                      return onItemsBuilder(values);
                    },
                  ),
                ),
              if (widget.itemsBuilder != null) widget.itemsBuilder!(values),
            ],
          ),
        ),
      );
    });
  }
}
