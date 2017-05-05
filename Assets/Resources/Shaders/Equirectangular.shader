﻿// Copyright 2014 Google Inc. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Original code by Nora
// http://stereoarts.jp
//
// Retrieved from:
// https://developer.oculusvr.com/forums/viewtopic.php?f=37&t=844#p28982

Shader "Cardboard/Sphere/Equirectangular" {
  Properties {
    _MainTex ("Texture", 2D) = "white" {}
  }
  Category {
    Tags { "RenderType" = "Opaque" }
    Cull Off
    Lighting Off
    Fog {Mode Off}
    BindChannels {
      Bind "Color", color
      Bind "Vertex", vertex
      Bind "TexCoord", texcoord
    }
    SubShader {
      Pass {
        SetTexture [_MainTex] {
          Combine primary * texture
        }
      }
    }
  }
}
