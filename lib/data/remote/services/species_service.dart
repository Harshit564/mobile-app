import 'package:rxdart/rxdart.dart';
import 'package:vost/data/remote/endpoints/species_endpoints.dart';
import 'package:vost/data/remote/models/response/base_list_response.dart';

class SpeciesService {
  final SpeciesEndpoints _endpoints;

  SpeciesService(this._endpoints);

  Observable<BaseListResponse> getSpecies() {
    return Observable.fromFuture(_endpoints.getSpecies())
        .map((response) => BaseListResponse.fromJson(response.data));
  }
}
