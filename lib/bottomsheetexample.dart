import 'package:flutter/material.dart';

class BottomsheetExample extends StatefulWidget {
  const BottomsheetExample({super.key});

  @override
  State<BottomsheetExample> createState() => _BottomsheetExampleState();
}

class _BottomsheetExampleState extends State<BottomsheetExample>
    with TickerProviderStateMixin {
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Draggable & Scrollable BottomSheet")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true, // important for full height
              backgroundColor: Colors.transparent,
              builder: (context) {
                return DraggableScrollableSheet(
                  expand: true, // allow full drag
                  initialChildSize: 0.3,
                  minChildSize: 0.3,
                  maxChildSize: 1, // full screen
                  // snap: true,
                  builder: (context, scrollController) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                width: 40,
                                height: 5,
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Name",
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Email",
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Phone",
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: "Address",
                                ),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Submit"),
                              ),
                              const SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}
