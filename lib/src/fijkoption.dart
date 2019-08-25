//MIT License
//
//Copyright (c) [2019] [Befovy]
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

import 'dart:collection';

class FijkOption {
  final Map<int, Map<String, dynamic>> _options = HashMap();

  final Map<String, dynamic> _formatOption = HashMap();
  final Map<String, dynamic> _codecOption = HashMap();
  final Map<String, dynamic> _swsOption = HashMap();
  final Map<String, dynamic> _playerOption = HashMap();
  final Map<String, dynamic> _swrOption = HashMap();

  static const int formatCategory = 1;
  static const int codecCategory = 2;
  static const int swsCategory = 3;
  static const int playerCategory = 4;
  static const int swrCategory = 5;

  Map<int, Map<String, dynamic>> get data {
    final Map<int, Map<String, dynamic>> options = HashMap();
    options[1] = Map.from(_formatOption);
    options[2] = Map.from(_codecOption);
    options[3] = Map.from(_swsOption);
    options[4] = Map.from(_playerOption);
    options[5] = Map.from(_swrOption);
    return options;
  }

  FijkOption() {
    _options[1] = _formatOption;
    _options[2] = _codecOption;
    _options[3] = _swsOption;
    _options[4] = _playerOption;
    _options[5] = _swrOption;
  }

  /// set player option
  /// [value] must be int or String
  void setPlayerOption(String key, dynamic value) {
    if (value is String || value is int)
      _playerOption[key] = value;
    else
      throw ArgumentError.value(value, "value", "Must be int or String");
  }

  /// set ffmpeg avformat option
  /// [value] must be int or String
  void setFormatOption(String key, dynamic value) {
    if (value is String || value is int)
      _formatOption[key] = value;
    else
      throw ArgumentError.value(value, "value", "Must be int or String");
  }

  /// set ffmpeg avcodec option
  /// [value] must be int or String
  void setCodecOption(String key, dynamic value) {
    if (value is String || value is int)
      _codecOption[key] = value;
    else
      throw ArgumentError.value(value, "value", "Must be int or String");
  }

  /// set ffmpeg swscale option
  /// [value] must be int or String
  void setSwsOption(String key, dynamic value) {
    if (value is String || value is int)
      _swsOption[key] = value;
    else
      throw ArgumentError.value(value, "value", "Must be int or String");
  }

  /// set ffmpeg swresample option
  /// [value] must be int or String
  void setSwrOption(String key, dynamic value) {
    if (value is String || value is int)
      _swrOption[key] = value;
    else
      throw ArgumentError.value(value, "value", "Must be int or String");
  }
}
