import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'src/a.dart';
import 'src/b.dart';
import 'src/c.dart';
import 'src/d.dart';

Builder myBuilder(BuilderOptions options) =>
    LibraryBuilder(MyGenerator(), generatedExtension: '.info.dart');

Builder sumBuilder(BuilderOptions options) =>
    SharedPartBuilder([PropertySumGenerator()], 'sum');

Builder productBuilder(BuilderOptions options) =>
    SharedPartBuilder([PropertyProductGenerator()], 'product');

Builder multiplyBuilder(BuilderOptions options) =>
    SharedPartBuilder([MultiplierGenerator()], 'multiply');
