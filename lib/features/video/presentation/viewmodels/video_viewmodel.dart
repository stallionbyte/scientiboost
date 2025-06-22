import '../../data/repositories/video_repository.dart';

class VideoViewmodel {
  final VideoRepository _videoRepository;

  VideoViewmodel(this._videoRepository);

  String? getPublicUrl(String matiere, String nameOnDataBase) {
    final result = _videoRepository.getPublicUrl(matiere, nameOnDataBase);

    final publicUrl = result.fold((publicUrl) => publicUrl, (_) => null);

    if (result.isSuccess()) {
      return publicUrl;
    } else {
      return null;
    }
  }
}
