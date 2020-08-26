// Copyright 2019 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// NOTE: This file is automatically-generated!
import Foundation
import Dispatch
import OAuth2
import GoogleAPIRuntime
import Commander

let CLIENT_CREDENTIALS = "google.json"
let TOKEN = "token.json"

func main() throws {
  let scopes = [
    "https://www.googleapis.com/auth/youtube",
    "https://www.googleapis.com/auth/youtube.channel-memberships.creator",
    "https://www.googleapis.com/auth/youtube.force-ssl",
    "https://www.googleapis.com/auth/youtube.readonly",
    "https://www.googleapis.com/auth/youtube.upload",
    "https://www.googleapis.com/auth/youtubepartner",
    "https://www.googleapis.com/auth/youtubepartner-channel-audit"]

  guard let tokenProvider = BrowserTokenProvider(credentials:CLIENT_CREDENTIALS, token:TOKEN) else {
    return
  }
  let youtube = try Youtube(tokenProvider:tokenProvider)

  let group = Group {
    $0.command("login", description:"Log in with browser-based authentication.") {
      try tokenProvider.signIn(scopes:scopes)
      try tokenProvider.saveToken(TOKEN)
    }

    // $0.command(
    //   "abuseReports.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include."),
    //   Options<String>("request_description", default: [], count: 1, description: ""),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_description in
    //   do {
    //     var parameters = Youtube.abuseReportsinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.AbuseReport()
    //     if let request_description = request_description.first {
    //       request.description = request_description
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.abuseReports_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "activities.list",
    //   Options<String>("channelId", default: [], count: 1, description: ""),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more activity resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in an activity resource, the snippet property contains other properties that identify the type of activity, a display title for the activity, and so forth. If you set *part=snippet*, the API response will also contain all of those nested properties."),
    //   Options<String>("publishedAfter", default: [], count: 1, description: ""),
    //   Options<String>("publishedBefore", default: [], count: 1, description: ""),
    //   Options<String>("regionCode", default: [], count: 1, description: ""),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   channelId, maxResults, pageToken, part, publishedAfter, publishedBefore, regionCode in
    //   do {
    //     var parameters = Youtube.activitieslistParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let publishedAfter = publishedAfter.first {
    //       parameters.publishedAfter = publishedAfter
    //     }
    //     if let publishedBefore = publishedBefore.first {
    //       parameters.publishedBefore = publishedBefore
    //     }
    //     if let regionCode = regionCode.first {
    //       parameters.regionCode = regionCode
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.activities_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "captions.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOf", default: [], count: 1, description: "ID of the Google+ Page for the channel that the request is be on behalf of"),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   description: "Deletes a resource.") {
    //   id, onBehalfOf, onBehalfOfContentOwner in
    //   do {
    //     var parameters = Youtube.captionsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOf = onBehalfOf.first {
    //       parameters.onBehalfOf = onBehalfOf
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.captions_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "captions.download",
    //   Options<String>("id", default: [], count: 1, description: "The ID of the caption track to download, required for One Platform."),
    //   Options<String>("onBehalfOf", default: [], count: 1, description: "ID of the Google+ Page for the channel that the request is be on behalf of"),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("tfmt", default: [], count: 1, description: "Convert the captions into this format. Supported options are sbv, srt, and vtt."),
    //   Options<String>("tlang", default: [], count: 1, description: "tlang is the language code; machine translate the captions into this language."),
    //   description: "Downloads a caption track.") {
    //   id, onBehalfOf, onBehalfOfContentOwner, tfmt, tlang in
    //   do {
    //     var parameters = Youtube.captionsdownloadParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOf = onBehalfOf.first {
    //       parameters.onBehalfOf = onBehalfOf
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let tfmt = tfmt.first {
    //       parameters.tfmt = tfmt
    //     }
    //     if let tlang = tlang.first {
    //       parameters.tlang = tlang
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.captions_download(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "captions.insert",
    //   Options<String>("onBehalfOf", default: [], count: 1, description: "ID of the Google+ Page for the channel that the request is be on behalf of"),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the caption resource parts that the API response will include. Set the parameter value to snippet."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the caption track."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#caption'."),
    //   description: "Inserts a new resource into this collection.") {
    //   onBehalfOf, onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.captionsinsertParameters()
    //     if let onBehalfOf = onBehalfOf.first {
    //       parameters.onBehalfOf = onBehalfOf
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Caption()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.captions_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "captions.list",
    //   Options<String>("id", default: [], count: 1, description: "Returns the captions with the given IDs for Stubby or Apiary."),
    //   Options<String>("onBehalfOf", default: [], count: 1, description: "ID of the Google+ Page for the channel that the request is on behalf of."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet."),
    //   Options<String>("videoId", default: [], count: 1, description: "Returns the captions for the specified video."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   id, onBehalfOf, onBehalfOfContentOwner, part, videoId in
    //   do {
    //     var parameters = Youtube.captionslistParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOf = onBehalfOf.first {
    //       parameters.onBehalfOf = onBehalfOf
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.captions_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "captions.update",
    //   Options<String>("onBehalfOf", default: [], count: 1, description: "ID of the Google+ Page for the channel that the request is on behalf of."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the caption track."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#caption'."),
    //   description: "Updates an existing resource.") {
    //   onBehalfOf, onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.captionsupdateParameters()
    //     if let onBehalfOf = onBehalfOf.first {
    //       parameters.onBehalfOf = onBehalfOf
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Caption()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.captions_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "channelBanners.insert",
    //   Options<String>("channelId", default: [], count: 1, description: "Unused, channel_id is currently derived from the security context of the requestor."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("request_etag", default: [], count: 1, description: ""),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#channelBannerResource'."),
    //   Options<String>("request_url", default: [], count: 1, description: "The URL of this banner image."),
    //   description: "Inserts a new resource into this collection.") {
    //   channelId, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, request_etag, request_kind, request_url in
    //   do {
    //     var parameters = Youtube.channelBannersinsertParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     var request = Youtube.ChannelBannerResource()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     if let request_url = request_url.first {
    //       request.url = request_url
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.channelBanners_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "channelSections.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   description: "Deletes a resource.") {
    //   id, onBehalfOfContentOwner in
    //   do {
    //     var parameters = Youtube.channelSectionsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.channelSections_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "channelSections.insert",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part names that you can include in the parameter value are snippet and contentDetails."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the channel section."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#channelSection'."),
    //   description: "Inserts a new resource into this collection.") {
    //   onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.channelSectionsinsertParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.ChannelSection()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.channelSections_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "channelSections.list",
    //   Options<String>("channelId", default: [], count: 1, description: "Return the ChannelSections owned by the specified channel ID."),
    //   Options<String>("hl", default: [], count: 1, description: "Return content in specified language"),
    //   Options<String>("id", default: [], count: 1, description: "Return the ChannelSections with the given IDs for Stubby or Apiary."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more channelSection resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, and contentDetails. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channelSection resource, the snippet property contains other properties, such as a display title for the channelSection. If you set *part=snippet*, the API response will also contain all of those nested properties."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   channelId, hl, id, onBehalfOfContentOwner, part in
    //   do {
    //     var parameters = Youtube.channelSectionslistParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.channelSections_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "channelSections.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part names that you can include in the parameter value are snippet and contentDetails."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the channel section."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#channelSection'."),
    //   description: "Updates an existing resource.") {
    //   onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.channelSectionsupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.ChannelSection()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.channelSections_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "channels.list",
    //   Options<String>("categoryId", default: [], count: 1, description: "Return the channels within the specified guide category ID."),
    //   Options<String>("forUsername", default: [], count: 1, description: "Return the channel associated with a YouTube username."),
    //   Options<String>("hl", default: [], count: 1, description: "Stands for 'host language'. Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en_US, es_MX)."),
    //   Options<String>("id", default: [], count: 1, description: "Return the channels with the specified IDs."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more channel resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channel resource, the contentDetails property contains other properties, such as the uploads properties. As such, if you set *part=contentDetails*, the API response will also contain all of those nested properties."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   categoryId, forUsername, hl, id, maxResults, onBehalfOfContentOwner, pageToken, part in
    //   do {
    //     var parameters = Youtube.channelslistParameters()
    //     if let categoryId = categoryId.first {
    //       parameters.categoryId = categoryId
    //     }
    //     if let forUsername = forUsername.first {
    //       parameters.forUsername = forUsername
    //     }
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.channels_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "channels.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "The *onBehalfOfContentOwner* parameter indicates that the authenticated user is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with needs to be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The API currently only allows the parameter value to be set to either brandingSettings or invideoPromotion. (You cannot update both of those parts with a single request.) Note that this method overrides the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the channel."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#channel'."),
    //   description: "Updates an existing resource.") {
    //   onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.channelsupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Channel()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.channels_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "commentThreads.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter identifies the properties that the API response will include. Set the parameter value to snippet. The snippet part has a quota cost of 2 units."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the comment thread."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#commentThread'."),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.commentThreadsinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.CommentThread()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.commentThreads_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "commentThreads.list",
    //   Options<String>("allThreadsRelatedToChannelId", default: [], count: 1, description: "Returns the comment threads of all videos of the channel and the channel comments as well."),
    //   Options<String>("channelId", default: [], count: 1, description: "Returns the comment threads for all the channel comments (ie does not include comments left on videos)."),
    //   Options<String>("id", default: [], count: 1, description: "Returns the comment threads with the given IDs for Stubby or Apiary."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("moderationStatus", default: [], count: 1, description: "Limits the returned comment threads to those with the specified moderation status. Not compatible with the 'id' filter. Valid values: published, heldForReview, likelySpam."),
    //   Options<String>("order", default: [], count: 1, description: ""),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more commentThread resource properties that the API response will include."),
    //   Options<String>("searchTerms", default: [], count: 1, description: "Limits the returned comment threads to those matching the specified key words. Not compatible with the 'id' filter."),
    //   Options<String>("textFormat", default: [], count: 1, description: "The requested text format for the returned comments."),
    //   Options<String>("videoId", default: [], count: 1, description: "Returns the comment threads of the specified video."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   allThreadsRelatedToChannelId, channelId, id, maxResults, moderationStatus, order, pageToken, part, searchTerms, textFormat, videoId in
    //   do {
    //     var parameters = Youtube.commentThreadslistParameters()
    //     if let allThreadsRelatedToChannelId = allThreadsRelatedToChannelId.first {
    //       parameters.allThreadsRelatedToChannelId = allThreadsRelatedToChannelId
    //     }
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let moderationStatus = moderationStatus.first {
    //       parameters.moderationStatus = moderationStatus
    //     }
    //     if let order = order.first {
    //       parameters.order = order
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let searchTerms = searchTerms.first {
    //       parameters.searchTerms = searchTerms
    //     }
    //     if let textFormat = textFormat.first {
    //       parameters.textFormat = textFormat
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.commentThreads_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "commentThreads.update",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of commentThread resource properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the comment thread."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#commentThread'."),
    //   description: "Updates an existing resource.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.commentThreadsupdateParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.CommentThread()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.commentThreads_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "comments.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   description: "Deletes a resource.") {
    //   id in
    //   do {
    //     var parameters = Youtube.commentsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.comments_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "comments.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter identifies the properties that the API response will include. Set the parameter value to snippet. The snippet part has a quota cost of 2 units."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the comment."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#comment'."),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.commentsinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Comment()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.comments_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "comments.list",
    //   Options<String>("id", default: [], count: 1, description: "Returns the comments with the given IDs for One Platform."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("parentId", default: [], count: 1, description: "Returns replies to the specified comment. Note, currently YouTube features only one level of replies (ie replies to top level comments). However replies to replies may be supported in the future."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more comment resource properties that the API response will include."),
    //   Options<String>("textFormat", default: [], count: 1, description: "The requested text format for the returned comments."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   id, maxResults, pageToken, parentId, part, textFormat in
    //   do {
    //     var parameters = Youtube.commentslistParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let parentId = parentId.first {
    //       parameters.parentId = parentId
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let textFormat = textFormat.first {
    //       parameters.textFormat = textFormat
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.comments_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "comments.markAsSpam",
    //   Options<String>("id", default: [], count: 1, description: "Flags the comments with the given IDs as spam in the caller's opinion."),
    //   description: "Expresses the caller's opinion that one or more comments should be flagged as spam.") {
    //   id in
    //   do {
    //     var parameters = Youtube.commentsmarkAsSpamParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.comments_markAsSpam(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "comments.setModerationStatus",
    //   Options<String>("id", default: [], count: 1, description: "Modifies the moderation status of the comments with the given IDs"),
    //   Options<String>("moderationStatus", default: [], count: 1, description: "Specifies the requested moderation status. Note, comments can be in statuses, which are not available through this call. For example, this call does not allow to mark a comment as 'likely spam'. Valid values: MODERATION_STATUS_PUBLISHED, MODERATION_STATUS_HELD_FOR_REVIEW, MODERATION_STATUS_REJECTED."),
    //   description: "Sets the moderation status of one or more comments.") {
    //   id, moderationStatus in
    //   do {
    //     var parameters = Youtube.commentssetModerationStatusParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let moderationStatus = moderationStatus.first {
    //       parameters.moderationStatus = moderationStatus
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.comments_setModerationStatus(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "comments.update",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter identifies the properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the comment."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#comment'."),
    //   description: "Updates an existing resource.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.commentsupdateParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Comment()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.comments_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "endscreens.get",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "Content owner of the video."),
    //   Options<String>("part", default: [], count: 1, description: "The properties to return."),
    //   Options<String>("videoId", default: [], count: 1, description: "Encrypted id of the video."),
    //   description: "Retrieves endscreen for a given video.") {
    //   onBehalfOfContentOwner, part, videoId in
    //   do {
    //     var parameters = Youtube.endscreensgetParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.endscreens_get(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "endscreens.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "Content owner of the video."),
    //   Options<String>("part", default: [], count: 1, description: "The properties to return."),
    //   Options<String>("videoId", default: [], count: 1, description: "Encrypted id of the video this endscreen corresponds to."),
    //   Options<String>("request_startOffset", default: [], count: 1, description: "The time we start the endscreen in milliseconds."),
    //   description: "Updates endscreen for a given video. Note: * If the element id is not provided, a new element will be created. * If the element id is provided, that element will be updated. * Existing elements will be discarded if they're not included in the request.") {
    //   onBehalfOfContentOwner, part, videoId, request_startOffset in
    //   do {
    //     var parameters = Youtube.endscreensupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     var request = Youtube.Endscreen()
    //     if let request_startOffset = request_startOffset.first {
    //       request.startOffset = request_startOffset
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.endscreens_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "guideCategories.list",
    //   Options<String>("hl", default: [], count: 1, description: ""),
    //   Options<String>("id", default: [], count: 1, description: "Return the guide categories with the given IDs."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the guideCategory resource properties that the API response will include. Set the parameter value to snippet."),
    //   Options<String>("regionCode", default: [], count: 1, description: "Return all categories in the given region code."),
    //   description: "Retrieves a list of guide categories.") {
    //   hl, id, part, regionCode in
    //   do {
    //     var parameters = Youtube.guideCategorieslistParameters()
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let regionCode = regionCode.first {
    //       parameters.regionCode = regionCode
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.guideCategories_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "i18nLanguages.list",
    //   Options<String>("hl", default: [], count: 1, description: ""),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the i18nLanguage resource properties that the API response will include. Set the parameter value to snippet."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   hl, part in
    //   do {
    //     var parameters = Youtube.i18nLanguageslistParameters()
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.i18nLanguages_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "i18nRegions.list",
    //   Options<String>("hl", default: [], count: 1, description: ""),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the i18nRegion resource properties that the API response will include. Set the parameter value to snippet."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   hl, part in
    //   do {
    //     var parameters = Youtube.i18nRegionslistParameters()
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.i18nRegions_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveBroadcasts.bind",
    //   Options<String>("id", default: [], count: 1, description: "Broadcast to bind to the stream"),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status."),
    //   Options<String>("streamId", default: [], count: 1, description: "Stream to bind, if not set unbind the current one."),
    //   description: "Bind a broadcast to a stream.") {
    //   id, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, streamId in
    //   do {
    //     var parameters = Youtube.liveBroadcastsbindParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let streamId = streamId.first {
    //       parameters.streamId = streamId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveBroadcasts_bind(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveBroadcasts.control",
    //   Options<String>("id", default: [], count: 1, description: "Broadcast to operate."),
    //   Options<String>("offsetTimeMs", default: [], count: 1, description: "The exact time when the actions (e.g. slate on) are executed. It is an offset from the first frame of the monitor stream. If not set, it means 'now' or ASAP. This field should not be set if the monitor stream is disabled, otherwise an error will be returned."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status."),
    //   Options<String>("walltime", default: [], count: 1, description: "The wall clock time at which the action should be executed. Only one of offset_time_ms and walltime may be set at a time."),
    //   description: "Slate and recording control of the live broadcast. Support actions: slate on/off, recording start/stop/pause/resume. Design doc: goto/yt-api-liveBroadcast-control") {
    //   id, offsetTimeMs, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, walltime in
    //   do {
    //     var parameters = Youtube.liveBroadcastscontrolParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let offsetTimeMs = offsetTimeMs.first {
    //       parameters.offsetTimeMs = offsetTimeMs
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let walltime = walltime.first {
    //       parameters.walltime = walltime
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveBroadcasts_control(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveBroadcasts.delete",
    //   Options<String>("id", default: [], count: 1, description: "Broadcast to delete."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   description: "Delete a given broadcast.") {
    //   id, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel in
    //   do {
    //     var parameters = Youtube.liveBroadcastsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveBroadcasts_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveBroadcasts.insert",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, contentDetails, and status."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube assigns to uniquely identify the broadcast."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#liveBroadcast'."),
    //   description: "Inserts a new stream for the authenticated user.") {
    //   onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.liveBroadcastsinsertParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.LiveBroadcast()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveBroadcasts_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    $0.command(
      "liveBroadcasts.list",
      Options<String>("broadcastStatus", default: [], count: 1, description: "Return broadcasts with a certain status, e.g. active broadcasts."),
      Options<String>("broadcastType", default: [], count: 1, description: "Return only broadcasts with the selected type."),
      Options<String>("id", default: [], count: 1, description: "Return broadcasts with the given ids from Stubby or Apiary."),
      Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
      Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
      Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
      Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
      Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status."),
      description: "Retrieve the list of broadcasts associated with the given channel.") {
      broadcastStatus, broadcastType, id, maxResults, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, pageToken, part in
      do {
        var parameters = Youtube.liveBroadcastslistParameters()
        if let broadcastStatus = broadcastStatus.first {
          parameters.broadcastStatus = broadcastStatus
        }
        if let broadcastType = broadcastType.first {
          parameters.broadcastType = broadcastType
        }
        if let id = id.first {
          parameters.id = id
        }
        if let maxResults = maxResults.first {
          parameters.maxResults = maxResults
        }
        if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
          parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
        }
        if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
          parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
        }
        if let pageToken = pageToken.first {
          parameters.pageToken = pageToken
        }
        if let part = part.first {
          parameters.part = part
        }
        let sem = DispatchSemaphore(value: 0)
        try youtube.liveBroadcasts_list(parameters:parameters) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    // $0.command(
    //   "liveBroadcasts.transition",
    //   Options<String>("broadcastStatus", default: [], count: 1, description: "The status to which the broadcast is going to transition."),
    //   Options<String>("id", default: [], count: 1, description: "Broadcast to transition."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status."),
    //   description: "Transition a broadcast to a given status.") {
    //   broadcastStatus, id, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part in
    //   do {
    //     var parameters = Youtube.liveBroadcaststransitionParameters()
    //     if let broadcastStatus = broadcastStatus.first {
    //       parameters.broadcastStatus = broadcastStatus
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveBroadcasts_transition(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveBroadcasts.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, contentDetails, and status. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a broadcast's privacy status is defined in the status part. As such, if your request is updating a private or unlisted broadcast, and the request's part parameter value includes the status part, the broadcast's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the broadcast will revert to the default privacy setting."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube assigns to uniquely identify the broadcast."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#liveBroadcast'."),
    //   description: "Updates an existing broadcast for the authenticated user.") {
    //   onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.liveBroadcastsupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.LiveBroadcast()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveBroadcasts_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatBans.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   description: "Deletes a chat ban.") {
    //   id in
    //   do {
    //     var parameters = Youtube.liveChatBansdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatBans_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatBans.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response returns. Set the parameter value to snippet."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube assigns to uniquely identify the ban."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string `'youtube#liveChatBan'`."),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.liveChatBansinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.LiveChatBan()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatBans_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatMessages.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   description: "Deletes a chat message.") {
    //   id in
    //   do {
    //     var parameters = Youtube.liveChatMessagesdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatMessages_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatMessages.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes. It identifies the properties that the write operation will set as well as the properties that the API response will include. Set the parameter value to snippet."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube assigns to uniquely identify the message."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#liveChatMessage'."),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.liveChatMessagesinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.LiveChatMessage()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatMessages_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatMessages.list",
    //   Options<String>("hl", default: [], count: 1, description: "Specifies the localization language in which the system messages should be returned."),
    //   Options<String>("liveChatId", default: [], count: 1, description: "The id of the live chat for which comments should be returned."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken property identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the liveChatComment resource parts that the API response will include. Supported values are id and snippet."),
    //   Options<Int>("profileImageSize", default: [], count: 1, description: "Specifies the size of the profile image that should be returned for each user."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   hl, liveChatId, maxResults, pageToken, part, profileImageSize in
    //   do {
    //     var parameters = Youtube.liveChatMessageslistParameters()
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let liveChatId = liveChatId.first {
    //       parameters.liveChatId = liveChatId
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let profileImageSize = profileImageSize.first {
    //       parameters.profileImageSize = profileImageSize
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatMessages_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatModerators.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   description: "Deletes a chat moderator.") {
    //   id in
    //   do {
    //     var parameters = Youtube.liveChatModeratorsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatModerators_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatModerators.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response returns. Set the parameter value to snippet."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube assigns to uniquely identify the moderator."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#liveChatModerator'."),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.liveChatModeratorsinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.LiveChatModerator()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatModerators_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveChatModerators.list",
    //   Options<String>("liveChatId", default: [], count: 1, description: "The id of the live chat for which moderators should be returned."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the liveChatModerator resource parts that the API response will include. Supported values are id and snippet."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   liveChatId, maxResults, pageToken, part in
    //   do {
    //     var parameters = Youtube.liveChatModeratorslistParameters()
    //     if let liveChatId = liveChatId.first {
    //       parameters.liveChatId = liveChatId
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveChatModerators_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveStreams.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   description: "Deletes an existing stream for the authenticated user.") {
    //   id, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel in
    //   do {
    //     var parameters = Youtube.liveStreamsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveStreams_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "liveStreams.insert",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, cdn, and status."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube assigns to uniquely identify the stream."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#liveStream'."),
    //   description: "Inserts a new stream for the authenticated user.") {
    //   onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.liveStreamsinsertParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.LiveStream()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveStreams_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    $0.command(
      "liveStreams.list",
      Options<String>("id", default: [], count: 1, description: "Return LiveStreams with the given ids from Stubby or Apiary."),
      Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
      Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
      Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
      Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
      Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more liveStream resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, cdn, and status."),
      description: "Retrieve the list of streams associated with the given channel. --") {
      id, maxResults, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, pageToken, part in
      do {
        var parameters = Youtube.liveStreamslistParameters()
        if let id = id.first {
          parameters.id = id
        }
        if let maxResults = maxResults.first {
          parameters.maxResults = maxResults
        }
        if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
          parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
        }
        if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
          parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
        }
        if let pageToken = pageToken.first {
          parameters.pageToken = pageToken
        }
        if let part = part.first {
          parameters.part = part
        }
        let sem = DispatchSemaphore(value: 0)
        try youtube.liveStreams_list(parameters:parameters) {
          response, error in
          if let response = response { print ("RESPONSE: \(response)") }
          if let error = error { print ("ERROR: \(error)") }
          sem.signal()
        }
        _ = sem.wait()
      } catch let error {
        print ("Client error: \(error)")
      }
    }

    // $0.command(
    //   "liveStreams.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, cdn, and status. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. If the request body does not specify a value for a mutable property, the existing value for that property will be removed."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube assigns to uniquely identify the stream."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#liveStream'."),
    //   description: "Updates an existing stream for the authenticated user.") {
    //   onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.liveStreamsupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.LiveStream()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.liveStreams_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "members.list",
    //   Options<String>("filterByMemberChannelId", default: [], count: 1, description: "Comma separated list of channel IDs. Only data about members that are part of this list will be included in the response."),
    //   Options<String>("hasAccessToLevel", default: [], count: 1, description: "Filter members in the results set to the ones that have access to a level."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("mode", default: [], count: 1, description: "Parameter that specifies which channel members to return."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the member resource parts that the API response will include. Set the parameter value to snippet."),
    //   description: "Retrieves a list of members that match the request criteria for a channel.") {
    //   filterByMemberChannelId, hasAccessToLevel, maxResults, mode, pageToken, part in
    //   do {
    //     var parameters = Youtube.memberslistParameters()
    //     if let filterByMemberChannelId = filterByMemberChannelId.first {
    //       parameters.filterByMemberChannelId = filterByMemberChannelId
    //     }
    //     if let hasAccessToLevel = hasAccessToLevel.first {
    //       parameters.hasAccessToLevel = hasAccessToLevel
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let mode = mode.first {
    //       parameters.mode = mode
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.members_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "membershipsLevels.list",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the membershipsLevel resource parts that the API response will include. Supported values are id and snippet."),
    //   description: "Retrieves a list of all pricing levels offered by a creator to the fans.") {
    //   part in
    //   do {
    //     var parameters = Youtube.membershipsLevelslistParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.membershipsLevels_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlistItems.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   description: "Deletes a resource.") {
    //   id, onBehalfOfContentOwner in
    //   do {
    //     var parameters = Youtube.playlistItemsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlistItems_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlistItems.insert",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the playlist item."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#playlistItem'."),
    //   description: "Inserts a new resource into this collection.") {
    //   onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.playlistItemsinsertParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.PlaylistItem()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlistItems_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlistItems.list",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set *part=snippet*, the API response will contain all of those properties."),
    //   Options<String>("playlistId", default: [], count: 1, description: "Return the playlist items within the given playlist."),
    //   Options<String>("videoId", default: [], count: 1, description: "Return the playlist items associated with the given video ID."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   id, maxResults, onBehalfOfContentOwner, pageToken, part, playlistId, videoId in
    //   do {
    //     var parameters = Youtube.playlistItemslistParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let playlistId = playlistId.first {
    //       parameters.playlistId = playlistId
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlistItems_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlistItems.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a playlist item can specify a start time and end time, which identify the times portion of the video that should play when users watch the video in the playlist. If your request is updating a playlist item that sets these values, and the request's part parameter value includes the contentDetails part, the playlist item's start and end times will be updated to whatever value the request body specifies. If the request body does not specify values, the existing start and end times will be removed and replaced with the default settings."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the playlist item."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#playlistItem'."),
    //   description: "Updates an existing resource.") {
    //   onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.playlistItemsupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.PlaylistItem()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlistItems_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlists.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   description: "Deletes a resource.") {
    //   id, onBehalfOfContentOwner in
    //   do {
    //     var parameters = Youtube.playlistsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlists_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlists.insert",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the playlist."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#playlist'."),
    //   description: "Inserts a new resource into this collection.") {
    //   onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.playlistsinsertParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Playlist()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlists_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlists.list",
    //   Options<String>("channelId", default: [], count: 1, description: "Return the playlists owned by the specified channel ID."),
    //   Options<String>("hl", default: [], count: 1, description: "Returen content in specified language"),
    //   Options<String>("id", default: [], count: 1, description: "Return the playlists with the given IDs for Stubby or Apiary."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more playlist resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlist resource, the snippet property contains properties like author, title, description, tags, and timeCreated. As such, if you set *part=snippet*, the API response will contain all of those properties."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   channelId, hl, id, maxResults, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, pageToken, part in
    //   do {
    //     var parameters = Youtube.playlistslistParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlists_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "playlists.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that this method will override the existing values for mutable properties that are contained in any parts that the request body specifies. For example, a playlist's description is contained in the snippet part, which must be included in the request body. If the request does not specify a value for the snippet.description property, the playlist's existing description will be deleted."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the playlist."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#playlist'."),
    //   description: "Updates an existing resource.") {
    //   onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.playlistsupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Playlist()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.playlists_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "search.list",
    //   Options<String>("channelId", default: [], count: 1, description: "Filter on resources belonging to this channelId."),
    //   Options<String>("channelType", default: [], count: 1, description: "Add a filter on the channel search."),
    //   Options<String>("eventType", default: [], count: 1, description: "Filter on the livestream status of the videos."),
    //   Options<String>("location", default: [], count: 1, description: "Filter on location of the video"),
    //   Options<String>("locationRadius", default: [], count: 1, description: "Filter on distance from the location (specified above)."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("order", default: [], count: 1, description: "Sort order of the results."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more search resource properties that the API response will include. Set the parameter value to snippet."),
    //   Options<String>("publishedAfter", default: [], count: 1, description: "Filter on resources published after this date."),
    //   Options<String>("publishedBefore", default: [], count: 1, description: "Filter on resources published before this date."),
    //   Options<String>("q", default: [], count: 1, description: "Textual search terms to match."),
    //   Options<String>("regionCode", default: [], count: 1, description: "Display the content as seen by viewers in this country."),
    //   Options<String>("relatedToVideoId", default: [], count: 1, description: "Search related to a resource."),
    //   Options<String>("relevanceLanguage", default: [], count: 1, description: "Return results relevant to this language."),
    //   Options<String>("safeSearch", default: [], count: 1, description: "Indicates whether the search results should include restricted content as well as standard content."),
    //   Options<String>("topicId", default: [], count: 1, description: "Restrict results to a particular topic."),
    //   Options<String>("type", default: [], count: 1, description: "Restrict results to a particular set of resource types from One Platform."),
    //   Options<String>("videoCaption", default: [], count: 1, description: "Filter on the presence of captions on the videos."),
    //   Options<String>("videoCategoryId", default: [], count: 1, description: "Filter on videos in a specific category."),
    //   Options<String>("videoDefinition", default: [], count: 1, description: "Filter on the definition of the videos."),
    //   Options<String>("videoDimension", default: [], count: 1, description: "Filter on 3d videos."),
    //   Options<String>("videoDuration", default: [], count: 1, description: "Filter on the duration of the videos."),
    //   Options<String>("videoEmbeddable", default: [], count: 1, description: "Filter on embeddable videos."),
    //   Options<String>("videoLicense", default: [], count: 1, description: "Filter on the license of the videos."),
    //   Options<String>("videoSyndicated", default: [], count: 1, description: "Filter on syndicated videos."),
    //   Options<String>("videoType", default: [], count: 1, description: "Filter on videos of a specific type."),
    //   description: "Retrieves a list of search resources") {
    //   channelId, channelType, eventType, location, locationRadius, maxResults, onBehalfOfContentOwner, order, pageToken, part, publishedAfter, publishedBefore, q, regionCode, relatedToVideoId, relevanceLanguage, safeSearch, topicId, type, videoCaption, videoCategoryId, videoDefinition, videoDimension, videoDuration, videoEmbeddable, videoLicense, videoSyndicated, videoType in
    //   do {
    //     var parameters = Youtube.searchlistParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let channelType = channelType.first {
    //       parameters.channelType = channelType
    //     }
    //     if let eventType = eventType.first {
    //       parameters.eventType = eventType
    //     }
    //     if let location = location.first {
    //       parameters.location = location
    //     }
    //     if let locationRadius = locationRadius.first {
    //       parameters.locationRadius = locationRadius
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let order = order.first {
    //       parameters.order = order
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let publishedAfter = publishedAfter.first {
    //       parameters.publishedAfter = publishedAfter
    //     }
    //     if let publishedBefore = publishedBefore.first {
    //       parameters.publishedBefore = publishedBefore
    //     }
    //     if let q = q.first {
    //       parameters.q = q
    //     }
    //     if let regionCode = regionCode.first {
    //       parameters.regionCode = regionCode
    //     }
    //     if let relatedToVideoId = relatedToVideoId.first {
    //       parameters.relatedToVideoId = relatedToVideoId
    //     }
    //     if let relevanceLanguage = relevanceLanguage.first {
    //       parameters.relevanceLanguage = relevanceLanguage
    //     }
    //     if let safeSearch = safeSearch.first {
    //       parameters.safeSearch = safeSearch
    //     }
    //     if let topicId = topicId.first {
    //       parameters.topicId = topicId
    //     }
    //     if let type = type.first {
    //       parameters.type = type
    //     }
    //     if let videoCaption = videoCaption.first {
    //       parameters.videoCaption = videoCaption
    //     }
    //     if let videoCategoryId = videoCategoryId.first {
    //       parameters.videoCategoryId = videoCategoryId
    //     }
    //     if let videoDefinition = videoDefinition.first {
    //       parameters.videoDefinition = videoDefinition
    //     }
    //     if let videoDimension = videoDimension.first {
    //       parameters.videoDimension = videoDimension
    //     }
    //     if let videoDuration = videoDuration.first {
    //       parameters.videoDuration = videoDuration
    //     }
    //     if let videoEmbeddable = videoEmbeddable.first {
    //       parameters.videoEmbeddable = videoEmbeddable
    //     }
    //     if let videoLicense = videoLicense.first {
    //       parameters.videoLicense = videoLicense
    //     }
    //     if let videoSyndicated = videoSyndicated.first {
    //       parameters.videoSyndicated = videoSyndicated
    //     }
    //     if let videoType = videoType.first {
    //       parameters.videoType = videoType
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.search_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "sponsors.list",
    //   Options<String>("filter", default: [], count: 1, description: "Parameter that specifies which channel sponsors to return."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the sponsor resource parts that the API response will include. Supported values are id and snippet."),
    //   description: "Retrieves a list of sponsors that match the request criteria for a channel.") {
    //   filter, maxResults, pageToken, part in
    //   do {
    //     var parameters = Youtube.sponsorslistParameters()
    //     if let filter = filter.first {
    //       parameters.filter = filter
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.sponsors_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "subscriptions.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   description: "Deletes a resource.") {
    //   id in
    //   do {
    //     var parameters = Youtube.subscriptionsdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.subscriptions_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "subscriptions.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the subscription."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#subscription'."),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.subscriptionsinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Subscription()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.subscriptions_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "subscriptions.list",
    //   Options<String>("channelId", default: [], count: 1, description: "Return the subscriptions of the given channel owner."),
    //   Options<String>("forChannelId", default: [], count: 1, description: "Return the subscriptions to the subset of these channels that the authenticated user is subscribed to."),
    //   Options<String>("id", default: [], count: 1, description: "Return the subscriptions with the given IDs for Stubby or Apiary."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("order", default: [], count: 1, description: "The order of the returned subscriptions"),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more subscription resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a subscription resource, the snippet property contains other properties, such as a display title for the subscription. If you set *part=snippet*, the API response will also contain all of those nested properties."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   channelId, forChannelId, id, maxResults, onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, order, pageToken, part in
    //   do {
    //     var parameters = Youtube.subscriptionslistParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let forChannelId = forChannelId.first {
    //       parameters.forChannelId = forChannelId
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let order = order.first {
    //       parameters.order = order
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.subscriptions_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "superChatEvents.list",
    //   Options<String>("hl", default: [], count: 1, description: "Return rendered funding amounts in specified language."),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the superChatEvent resource parts that the API response will include. Supported values are id and snippet."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   hl, maxResults, pageToken, part in
    //   do {
    //     var parameters = Youtube.superChatEventslistParameters()
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.superChatEvents_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "tests.insert",
    //   Options<String>("part", default: [], count: 1, description: ""),
    //   Options<String>("request_gaia", default: [], count: 1, description: ""),
    //   Options<String>("request_id", default: [], count: 1, description: ""),
    //   description: "POST method.") {
    //   part, request_gaia, request_id in
    //   do {
    //     var parameters = Youtube.testsinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.TestItem()
    //     if let request_gaia = request_gaia.first {
    //       request.gaia = request_gaia
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.tests_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "thirdPartyLinks.delete",
    //   Options<String>("linkingToken", default: [], count: 1, description: "Delete the partner links with the given linking token."),
    //   Options<String>("part", default: [], count: 1, description: "Do not use. Required for compatibility."),
    //   Options<String>("type", default: [], count: 1, description: "Type of the link to be deleted."),
    //   description: "Deletes a resource.") {
    //   linkingToken, part, type in
    //   do {
    //     var parameters = Youtube.thirdPartyLinksdeleteParameters()
    //     if let linkingToken = linkingToken.first {
    //       parameters.linkingToken = linkingToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let type = type.first {
    //       parameters.type = type
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.thirdPartyLinks_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "thirdPartyLinks.insert",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supported values are linkingToken, status, and snippet."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource"),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#thirdPartyLink'."),
    //   Options<String>("request_linkingToken", default: [], count: 1, description: "The linking_token identifies a YouTube account and channel with which the third party account is linked."),
    //   description: "Inserts a new resource into this collection.") {
    //   part, request_etag, request_kind, request_linkingToken in
    //   do {
    //     var parameters = Youtube.thirdPartyLinksinsertParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.ThirdPartyLink()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     if let request_linkingToken = request_linkingToken.first {
    //       request.linkingToken = request_linkingToken
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.thirdPartyLinks_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "thirdPartyLinks.list",
    //   Options<String>("linkingToken", default: [], count: 1, description: "Get a third party link with the given linking token."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the thirdPartyLink resource parts that the API response will include. Supported values are linkingToken, status, and snippet."),
    //   Options<String>("type", default: [], count: 1, description: "Get a third party link of the given type."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   linkingToken, part, type in
    //   do {
    //     var parameters = Youtube.thirdPartyLinkslistParameters()
    //     if let linkingToken = linkingToken.first {
    //       parameters.linkingToken = linkingToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let type = type.first {
    //       parameters.type = type
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.thirdPartyLinks_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "thirdPartyLinks.update",
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supported values are linkingToken, status, and snippet."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource"),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#thirdPartyLink'."),
    //   Options<String>("request_linkingToken", default: [], count: 1, description: "The linking_token identifies a YouTube account and channel with which the third party account is linked."),
    //   description: "Updates an existing resource.") {
    //   part, request_etag, request_kind, request_linkingToken in
    //   do {
    //     var parameters = Youtube.thirdPartyLinksupdateParameters()
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.ThirdPartyLink()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     if let request_linkingToken = request_linkingToken.first {
    //       request.linkingToken = request_linkingToken
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.thirdPartyLinks_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "thumbnails.set",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("videoId", default: [], count: 1, description: "Returns the Thumbnail with the given video IDs for Stubby or Apiary."),
    //   description: "As this is not an insert in a strict sense (it supports uploading/setting of a thumbnail for multiple videos, which doesn't result in creation of a single resource), I use a custom verb here.") {
    //   onBehalfOfContentOwner, videoId in
    //   do {
    //     var parameters = Youtube.thumbnailssetParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.thumbnails_set(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videoAbuseReportReasons.list",
    //   Options<String>("hl", default: [], count: 1, description: ""),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the videoCategory resource parts that the API response will include. Supported values are id and snippet."),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   hl, part in
    //   do {
    //     var parameters = Youtube.videoAbuseReportReasonslistParameters()
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videoAbuseReportReasons_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videoCategories.list",
    //   Options<String>("hl", default: [], count: 1, description: ""),
    //   Options<String>("id", default: [], count: 1, description: "Returns the video categories with the given IDs for Stubby or Apiary."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies the videoCategory resource properties that the API response will include. Set the parameter value to snippet."),
    //   Options<String>("regionCode", default: [], count: 1, description: ""),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   hl, id, part, regionCode in
    //   do {
    //     var parameters = Youtube.videoCategorieslistParameters()
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let regionCode = regionCode.first {
    //       parameters.regionCode = regionCode
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videoCategories_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videos.delete",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   description: "Deletes a resource.") {
    //   id, onBehalfOfContentOwner in
    //   do {
    //     var parameters = Youtube.videosdeleteParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videos_delete(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videos.getRating",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   description: "Retrieves the ratings that the authorized user gave to a list of specified videos.") {
    //   id, onBehalfOfContentOwner in
    //   do {
    //     var parameters = Youtube.videosgetRatingParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videos_getRating(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videos.insert",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("onBehalfOfContentOwnerChannel", default: [], count: 1, description: "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that not all parts contain properties that can be set when inserting or updating a video. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the video."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#video'."),
    //   description: "Inserts a new resource into this collection.") {
    //   onBehalfOfContentOwner, onBehalfOfContentOwnerChannel, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.videosinsertParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel.first {
    //       parameters.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Video()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videos_insert(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videos.list",
    //   Options<String>("chart", default: [], count: 1, description: "Return the videos that are in the specified chart."),
    //   Options<String>("hl", default: [], count: 1, description: "Stands for 'host language'. Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en_US, es_MX)."),
    //   Options<String>("id", default: [], count: 1, description: "Return videos with the given ids."),
    //   Options<String>("locale", default: [], count: 1, description: ""),
    //   Options<Int>("maxHeight", default: [], count: 1, description: ""),
    //   Options<Int>("maxResults", default: [], count: 1, description: "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. *Note:* This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter."),
    //   Options<Int>("maxWidth", default: [], count: 1, description: "Return the player with maximum height specified in"),
    //   Options<String>("myRating", default: [], count: 1, description: "Return videos liked/disliked by the authenticated user. Does not support RateType.RATED_TYPE_NONE."),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("pageToken", default: [], count: 1, description: "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. *Note:* This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter specifies a comma-separated list of one or more video resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set *part=snippet*, the API response will contain all of those properties."),
    //   Options<String>("regionCode", default: [], count: 1, description: "Use a chart that is specific to the specified region"),
    //   Options<String>("videoCategoryId", default: [], count: 1, description: "Use chart that is specific to the specified video category"),
    //   description: "Retrieves a list of resources, possibly filtered.") {
    //   chart, hl, id, locale, maxHeight, maxResults, maxWidth, myRating, onBehalfOfContentOwner, pageToken, part, regionCode, videoCategoryId in
    //   do {
    //     var parameters = Youtube.videoslistParameters()
    //     if let chart = chart.first {
    //       parameters.chart = chart
    //     }
    //     if let hl = hl.first {
    //       parameters.hl = hl
    //     }
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let locale = locale.first {
    //       parameters.locale = locale
    //     }
    //     if let maxHeight = maxHeight.first {
    //       parameters.maxHeight = maxHeight
    //     }
    //     if let maxResults = maxResults.first {
    //       parameters.maxResults = maxResults
    //     }
    //     if let maxWidth = maxWidth.first {
    //       parameters.maxWidth = maxWidth
    //     }
    //     if let myRating = myRating.first {
    //       parameters.myRating = myRating
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let pageToken = pageToken.first {
    //       parameters.pageToken = pageToken
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let regionCode = regionCode.first {
    //       parameters.regionCode = regionCode
    //     }
    //     if let videoCategoryId = videoCategoryId.first {
    //       parameters.videoCategoryId = videoCategoryId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videos_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videos.rate",
    //   Options<String>("id", default: [], count: 1, description: ""),
    //   Options<String>("rating", default: [], count: 1, description: ""),
    //   description: "Adds a like or dislike rating to a video or removes a rating from a video.") {
    //   id, rating in
    //   do {
    //     var parameters = Youtube.videosrateParameters()
    //     if let id = id.first {
    //       parameters.id = id
    //     }
    //     if let rating = rating.first {
    //       parameters.rating = rating
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videos_rate(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videos.reportAbuse",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("request_comments", default: [], count: 1, description: "Additional comments regarding the abuse report."),
    //   Options<String>("request_language", default: [], count: 1, description: "The language that the content was viewed in."),
    //   Options<String>("request_reasonId", default: [], count: 1, description: "The high-level, or primary, reason that the content is abusive. The value is an abuse report reason ID."),
    //   Options<String>("request_secondaryReasonId", default: [], count: 1, description: "The specific, or secondary, reason that this content is abusive (if available). The value is an abuse report reason ID that is a valid secondary reason for the primary reason."),
    //   Options<String>("request_videoId", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the video."),
    //   description: "Report abuse for a video.") {
    //   onBehalfOfContentOwner, request_comments, request_language, request_reasonId, request_secondaryReasonId, request_videoId in
    //   do {
    //     var parameters = Youtube.videosreportAbuseParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     var request = Youtube.VideoAbuseReport()
    //     if let request_comments = request_comments.first {
    //       request.comments = request_comments
    //     }
    //     if let request_language = request_language.first {
    //       request.language = request_language
    //     }
    //     if let request_reasonId = request_reasonId.first {
    //       request.reasonId = request_reasonId
    //     }
    //     if let request_secondaryReasonId = request_secondaryReasonId.first {
    //       request.secondaryReasonId = request_secondaryReasonId
    //     }
    //     if let request_videoId = request_videoId.first {
    //       request.videoId = request_videoId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videos_reportAbuse(request: request, parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "videos.update",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("part", default: [], count: 1, description: "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a video's privacy setting is contained in the status part. As such, if your request is updating a private video, and the request's part parameter value includes the status part, the video's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the video will revert to the default privacy setting. In addition, not all parts contain properties that can be set when inserting or updating a video. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response."),
    //   Options<String>("request_etag", default: [], count: 1, description: "Etag of this resource."),
    //   Options<String>("request_id", default: [], count: 1, description: "The ID that YouTube uses to uniquely identify the video."),
    //   Options<String>("request_kind", default: [], count: 1, description: "Identifies what kind of resource this is. Value: the fixed string 'youtube#video'."),
    //   description: "Updates an existing resource.") {
    //   onBehalfOfContentOwner, part, request_etag, request_id, request_kind in
    //   do {
    //     var parameters = Youtube.videosupdateParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     var request = Youtube.Video()
    //     if let request_etag = request_etag.first {
    //       request.etag = request_etag
    //     }
    //     if let request_id = request_id.first {
    //       request.id = request_id
    //     }
    //     if let request_kind = request_kind.first {
    //       request.kind = request_kind
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.videos_update(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "watermarks.set",
    //   Options<String>("channelId", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   Options<String>("request_imageBytes", default: [], count: 1, description: "The bytes the uploaded image. Only used in api to youtube communication."),
    //   Options<String>("request_imageUrl", default: [], count: 1, description: "The url of the uploaded image. Only used in apiary to api communication."),
    //   Options<String>("request_targetChannelId", default: [], count: 1, description: "The channel to which this branding links. If not present it defaults to the current channel."),
    //   description: "Allows upload of watermark image and setting it for a channel.") {
    //   channelId, onBehalfOfContentOwner, request_imageBytes, request_imageUrl, request_targetChannelId in
    //   do {
    //     var parameters = Youtube.watermarkssetParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     var request = Youtube.InvideoBranding()
    //     if let request_imageBytes = request_imageBytes.first {
    //       request.imageBytes = request_imageBytes
    //     }
    //     if let request_imageUrl = request_imageUrl.first {
    //       request.imageUrl = request_imageUrl
    //     }
    //     if let request_targetChannelId = request_targetChannelId.first {
    //       request.targetChannelId = request_targetChannelId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.watermarks_set(request: request, parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "watermarks.unset",
    //   Options<String>("channelId", default: [], count: 1, description: ""),
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner."),
    //   description: "Allows removal of channel watermark.") {
    //   channelId, onBehalfOfContentOwner in
    //   do {
    //     var parameters = Youtube.watermarksunsetParameters()
    //     if let channelId = channelId.first {
    //       parameters.channelId = channelId
    //     }
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.watermarks_unset(parameters:parameters) {
    //       error in
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "youtube_v3.infocards",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "Content owner of the video."),
    //   Options<String>("part", default: [], count: 1, description: "The properties to update."),
    //   Options<String>("videoId", default: [], count: 1, description: "Encrypted id of the video."),
    //   description: "Updates infocards for a given video. Note: * If the card id is not provided, a new card will be created. * If the card id is provided, that card will be updated. * Existing cards will be discarded if they're not included in the request.") {
    //   onBehalfOfContentOwner, part, videoId in
    //   do {
    //     var parameters = Youtube.youtube_v3infocardsParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     var request = Youtube.InfoCards()
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.youtube_v3_infocards(request: request, parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }

    // $0.command(
    //   "youtube_v3_infocards.list",
    //   Options<String>("onBehalfOfContentOwner", default: [], count: 1, description: "Content owner of the video."),
    //   Options<String>("part", default: [], count: 1, description: "The properties to return."),
    //   Options<String>("videoId", default: [], count: 1, description: "Encrypted id of the video."),
    //   description: "Retrieves all infocards for a given video.") {
    //   onBehalfOfContentOwner, part, videoId in
    //   do {
    //     var parameters = Youtube.youtube_v3_infocardslistParameters()
    //     if let onBehalfOfContentOwner = onBehalfOfContentOwner.first {
    //       parameters.onBehalfOfContentOwner = onBehalfOfContentOwner
    //     }
    //     if let part = part.first {
    //       parameters.part = part
    //     }
    //     if let videoId = videoId.first {
    //       parameters.videoId = videoId
    //     }
    //     let sem = DispatchSemaphore(value: 0)
    //     try youtube.youtube_v3_infocards_list(parameters:parameters) {
    //       response, error in
    //       if let response = response { print ("RESPONSE: \(response)") }
    //       if let error = error { print ("ERROR: \(error)") }
    //       sem.signal()
    //     }
    //     _ = sem.wait()
    //   } catch let error {
    //     print ("Client error: \(error)")
    //   }
    // }
  }
  group.run()
}

do {
  try main()
} catch (let error) {
  print("Application error: \(error)")
}

