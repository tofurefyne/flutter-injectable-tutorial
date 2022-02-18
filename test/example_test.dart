import 'package:flutter_test/flutter_test.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';
import 'package:injectable_tutorial/i_abc_facade.dart';
import 'package:injectable_tutorial/injection.config.dart';
import 'package:injectable_tutorial/injection.dart';
import 'package:mocktail/mocktail.dart';

import 'injection.dart';

void main() {
  late IAbcFacade abcFacade;
  setUpAll(() {
    configureInjection(Env.test);
    configureTestInjection(Env.test);

    abcFacade = getIt<IAbcFacade>();
  });

  test(
    "should do something",
        () async {
      // arrange
      final mockCounterRepository = getIt<ICounterRepository>();
      print('=======>${mockCounterRepository.runtimeType}');
      when(() => mockCounterRepository.getIncrement()).thenReturn(
          123
      );
      when(() => abcFacade.getCounter()).thenReturn(
          123
      );
      print(abcFacade.getCounter());
      // act
      print(mockCounterRepository.getIncrement());
      // assert
      verify(() => mockCounterRepository.getIncrement()).called(1);
    },
  );
}
