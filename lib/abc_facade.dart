import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';
import 'package:injectable_tutorial/i_abc_facade.dart';

@Injectable(as: IAbcFacade, env: [Environment.prod, Environment.dev])
class AbcFacade implements IAbcFacade {
  final ICounterRepository counterRepository;

  AbcFacade(this.counterRepository);

  int getCounter() {
    return 1;
  }
}