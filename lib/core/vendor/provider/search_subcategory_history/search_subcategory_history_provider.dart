import '../../api/common/ps_resource.dart';
import '../../api/common/ps_status.dart';
import '../../constant/ps_constants.dart';
import '../../repository/search_subcategory_history_repository.dart';
import '../../utils/utils.dart';
import '../../viewobject/api_status.dart';
import '../../viewobject/search_subcategory_history.dart';
import '../common/ps_provider.dart';

class SearchSubCategoryHistoryProvider extends PsProvider<SearchSubCategoryHistory> {
  SearchSubCategoryHistoryProvider({required SearchSubCategoryHistoryRepository repo, int limit = 0})
      : super(repo, limit, subscriptionType: PsConst.LIST_OBJECT_SUBSCRIPTION) {
    _repo = repo;
  }

  PsResource<List<SearchSubCategoryHistory>> get searchSubCategoryHistory => dataList;

  PsResource<ApiStatus> _apiStatus =
      PsResource<ApiStatus>(PsStatus.NOACTION, '', null);
  PsResource<ApiStatus> get user => _apiStatus;

  late SearchSubCategoryHistoryRepository _repo;

  Future<dynamic> deleteSearchSubCategoryHistoryList(
    Map<dynamic, dynamic> jsonMap,
    String? loginUserId,
    String? languageCode
  ) async {
    isLoading = true;

    isConnectedToInternet = await Utils.checkInternetConnectivity();

    _apiStatus = await _repo.deleteSearchSubCategoryHistoryList(
        jsonMap, loginUserId, languageCode, isConnectedToInternet, PsStatus.PROGRESS_LOADING);

    return _apiStatus;
  }
}
