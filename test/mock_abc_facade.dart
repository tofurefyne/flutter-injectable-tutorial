import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/i_abc_facade.dart';
import 'package:mocktail/mocktail.dart';

@Injectable(as: IAbcFacade, env: [Environment.test])
class MockAbcFacade extends Mock implements IAbcFacade {}