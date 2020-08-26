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
import OAuth2
import GoogleAPIRuntime

public class Youtube : Service {
    public init(tokenProvider: TokenProvider) throws {
        try super.init(tokenProvider, "https://www.googleapis.com/")
    }

    public class AbuseReport: Codable {
        public init (`abuseTypes`: [AbuseType]?, `description`: String?, `relatedEntities`: [RelatedEntity]?, `subject`: Entity?) {
            self.`abuseTypes` = `abuseTypes`
            self.`description` = `description`
            self.`relatedEntities` = `relatedEntities`
            self.`subject` = `subject`
        }
        public var `abuseTypes`: [AbuseType]?
        public var `description`: String?
        public var `relatedEntities`: [RelatedEntity]?
        public var `subject`: Entity?
    }

    public class AbuseType: Codable {
        public init (`id`: String?) {
            self.`id` = `id`
        }
        public var `id`: String?
    }

    public class AccessPolicy: Codable {
        public init (`allowed`: Bool?, `exception`: [String]?) {
            self.`allowed` = `allowed`
            self.`exception` = `exception`
        }
        public var `allowed`: Bool?
        public var `exception`: [String]?
    }

    public class Activity: Codable {
        public init (`contentDetails`: ActivityContentDetails?, `etag`: String?, `id`: String?, `kind`: String?, `snippet`: ActivitySnippet?) {
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `contentDetails`: ActivityContentDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: ActivitySnippet?
    }

    public class ActivityContentDetails: Codable {
        public init (`bulletin`: ActivityContentDetailsBulletin?, `channelItem`: ActivityContentDetailsChannelItem?, `comment`: ActivityContentDetailsComment?, `favorite`: ActivityContentDetailsFavorite?, `like`: ActivityContentDetailsLike?, `playlistItem`: ActivityContentDetailsPlaylistItem?, `promotedItem`: ActivityContentDetailsPromotedItem?, `recommendation`: ActivityContentDetailsRecommendation?, `social`: ActivityContentDetailsSocial?, `subscription`: ActivityContentDetailsSubscription?, `upload`: ActivityContentDetailsUpload?) {
            self.`bulletin` = `bulletin`
            self.`channelItem` = `channelItem`
            self.`comment` = `comment`
            self.`favorite` = `favorite`
            self.`like` = `like`
            self.`playlistItem` = `playlistItem`
            self.`promotedItem` = `promotedItem`
            self.`recommendation` = `recommendation`
            self.`social` = `social`
            self.`subscription` = `subscription`
            self.`upload` = `upload`
        }
        public var `bulletin`: ActivityContentDetailsBulletin?
        public var `channelItem`: ActivityContentDetailsChannelItem?
        public var `comment`: ActivityContentDetailsComment?
        public var `favorite`: ActivityContentDetailsFavorite?
        public var `like`: ActivityContentDetailsLike?
        public var `playlistItem`: ActivityContentDetailsPlaylistItem?
        public var `promotedItem`: ActivityContentDetailsPromotedItem?
        public var `recommendation`: ActivityContentDetailsRecommendation?
        public var `social`: ActivityContentDetailsSocial?
        public var `subscription`: ActivityContentDetailsSubscription?
        public var `upload`: ActivityContentDetailsUpload?
    }

    public class ActivityContentDetailsBulletin: Codable {
        public init (`resourceId`: ResourceId?) {
            self.`resourceId` = `resourceId`
        }
        public var `resourceId`: ResourceId?
    }

    public class ActivityContentDetailsChannelItem: Codable {
        public init (`resourceId`: ResourceId?) {
            self.`resourceId` = `resourceId`
        }
        public var `resourceId`: ResourceId?
    }

    public class ActivityContentDetailsComment: Codable {
        public init (`resourceId`: ResourceId?) {
            self.`resourceId` = `resourceId`
        }
        public var `resourceId`: ResourceId?
    }

    public class ActivityContentDetailsFavorite: Codable {
        public init (`resourceId`: ResourceId?) {
            self.`resourceId` = `resourceId`
        }
        public var `resourceId`: ResourceId?
    }

    public class ActivityContentDetailsLike: Codable {
        public init (`resourceId`: ResourceId?) {
            self.`resourceId` = `resourceId`
        }
        public var `resourceId`: ResourceId?
    }

    public class ActivityContentDetailsPlaylistItem: Codable {
        public init (`playlistId`: String?, `playlistItemId`: String?, `resourceId`: ResourceId?) {
            self.`playlistId` = `playlistId`
            self.`playlistItemId` = `playlistItemId`
            self.`resourceId` = `resourceId`
        }
        public var `playlistId`: String?
        public var `playlistItemId`: String?
        public var `resourceId`: ResourceId?
    }

    public class ActivityContentDetailsPromotedItem: Codable {
        public init (`adTag`: String?, `clickTrackingUrl`: String?, `creativeViewUrl`: String?, `ctaType`: String?, `customCtaButtonText`: String?, `descriptionText`: String?, `destinationUrl`: String?, `forecastingUrl`: [String]?, `impressionUrl`: [String]?, `videoId`: String?) {
            self.`adTag` = `adTag`
            self.`clickTrackingUrl` = `clickTrackingUrl`
            self.`creativeViewUrl` = `creativeViewUrl`
            self.`ctaType` = `ctaType`
            self.`customCtaButtonText` = `customCtaButtonText`
            self.`descriptionText` = `descriptionText`
            self.`destinationUrl` = `destinationUrl`
            self.`forecastingUrl` = `forecastingUrl`
            self.`impressionUrl` = `impressionUrl`
            self.`videoId` = `videoId`
        }
        public var `adTag`: String?
        public var `clickTrackingUrl`: String?
        public var `creativeViewUrl`: String?
        public var `ctaType`: String?
        public var `customCtaButtonText`: String?
        public var `descriptionText`: String?
        public var `destinationUrl`: String?
        public var `forecastingUrl`: [String]?
        public var `impressionUrl`: [String]?
        public var `videoId`: String?
    }

    public class ActivityContentDetailsRecommendation: Codable {
        public init (`reason`: String?, `resourceId`: ResourceId?, `seedResourceId`: ResourceId?) {
            self.`reason` = `reason`
            self.`resourceId` = `resourceId`
            self.`seedResourceId` = `seedResourceId`
        }
        public var `reason`: String?
        public var `resourceId`: ResourceId?
        public var `seedResourceId`: ResourceId?
    }

    public class ActivityContentDetailsSocial: Codable {
        public init (`author`: String?, `imageUrl`: String?, `referenceUrl`: String?, `resourceId`: ResourceId?, `type`: String?) {
            self.`author` = `author`
            self.`imageUrl` = `imageUrl`
            self.`referenceUrl` = `referenceUrl`
            self.`resourceId` = `resourceId`
            self.`type` = `type`
        }
        public var `author`: String?
        public var `imageUrl`: String?
        public var `referenceUrl`: String?
        public var `resourceId`: ResourceId?
        public var `type`: String?
    }

    public class ActivityContentDetailsSubscription: Codable {
        public init (`resourceId`: ResourceId?) {
            self.`resourceId` = `resourceId`
        }
        public var `resourceId`: ResourceId?
    }

    public class ActivityContentDetailsUpload: Codable {
        public init (`videoId`: String?) {
            self.`videoId` = `videoId`
        }
        public var `videoId`: String?
    }

    public class ActivityListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Activity]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Activity]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class ActivitySnippet: Codable {
        public init (`channelId`: String?, `channelTitle`: String?, `description`: String?, `groupId`: String?, `publishedAt`: String?, `thumbnails`: ThumbnailDetails?, `title`: String?, `type`: String?) {
            self.`channelId` = `channelId`
            self.`channelTitle` = `channelTitle`
            self.`description` = `description`
            self.`groupId` = `groupId`
            self.`publishedAt` = `publishedAt`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
            self.`type` = `type`
        }
        public var `channelId`: String?
        public var `channelTitle`: String?
        public var `description`: String?
        public var `groupId`: String?
        public var `publishedAt`: String?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
        public var `type`: String?
    }

    public class Caption: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: CaptionSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: CaptionSnippet?
    }

    public class CaptionListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Caption]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Caption]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class CaptionSnippet: Codable {
        public init (`audioTrackType`: String?, `failureReason`: String?, `isAutoSynced`: Bool?, `isCC`: Bool?, `isDraft`: Bool?, `isEasyReader`: Bool?, `isLarge`: Bool?, `language`: String?, `lastUpdated`: String?, `name`: String?, `status`: String?, `trackKind`: String?, `videoId`: String?) {
            self.`audioTrackType` = `audioTrackType`
            self.`failureReason` = `failureReason`
            self.`isAutoSynced` = `isAutoSynced`
            self.`isCC` = `isCC`
            self.`isDraft` = `isDraft`
            self.`isEasyReader` = `isEasyReader`
            self.`isLarge` = `isLarge`
            self.`language` = `language`
            self.`lastUpdated` = `lastUpdated`
            self.`name` = `name`
            self.`status` = `status`
            self.`trackKind` = `trackKind`
            self.`videoId` = `videoId`
        }
        public var `audioTrackType`: String?
        public var `failureReason`: String?
        public var `isAutoSynced`: Bool?
        public var `isCC`: Bool?
        public var `isDraft`: Bool?
        public var `isEasyReader`: Bool?
        public var `isLarge`: Bool?
        public var `language`: String?
        public var `lastUpdated`: String?
        public var `name`: String?
        public var `status`: String?
        public var `trackKind`: String?
        public var `videoId`: String?
    }

    public class CdnSettings: Codable {
        public init (`format`: String?, `frameRate`: String?, `ingestionInfo`: IngestionInfo?, `ingestionType`: String?, `resolution`: String?) {
            self.`format` = `format`
            self.`frameRate` = `frameRate`
            self.`ingestionInfo` = `ingestionInfo`
            self.`ingestionType` = `ingestionType`
            self.`resolution` = `resolution`
        }
        public var `format`: String?
        public var `frameRate`: String?
        public var `ingestionInfo`: IngestionInfo?
        public var `ingestionType`: String?
        public var `resolution`: String?
    }

    public typealias Channel_localizations = [String: ChannelLocalization]

    public class Channel: Codable {
        public init (`auditDetails`: ChannelAuditDetails?, `brandingSettings`: ChannelBrandingSettings?, `contentDetails`: ChannelContentDetails?, `contentOwnerDetails`: ChannelContentOwnerDetails?, `conversionPings`: ChannelConversionPings?, `etag`: String?, `id`: String?, `invideoPromotion`: InvideoPromotion?, `kind`: String?, `localizations`: Channel_localizations?, `snippet`: ChannelSnippet?, `statistics`: ChannelStatistics?, `status`: ChannelStatus?, `topicDetails`: ChannelTopicDetails?) {
            self.`auditDetails` = `auditDetails`
            self.`brandingSettings` = `brandingSettings`
            self.`contentDetails` = `contentDetails`
            self.`contentOwnerDetails` = `contentOwnerDetails`
            self.`conversionPings` = `conversionPings`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`invideoPromotion` = `invideoPromotion`
            self.`kind` = `kind`
            self.`localizations` = `localizations`
            self.`snippet` = `snippet`
            self.`statistics` = `statistics`
            self.`status` = `status`
            self.`topicDetails` = `topicDetails`
        }
        public var `auditDetails`: ChannelAuditDetails?
        public var `brandingSettings`: ChannelBrandingSettings?
        public var `contentDetails`: ChannelContentDetails?
        public var `contentOwnerDetails`: ChannelContentOwnerDetails?
        public var `conversionPings`: ChannelConversionPings?
        public var `etag`: String?
        public var `id`: String?
        public var `invideoPromotion`: InvideoPromotion?
        public var `kind`: String?
        public var `localizations`: Channel_localizations?
        public var `snippet`: ChannelSnippet?
        public var `statistics`: ChannelStatistics?
        public var `status`: ChannelStatus?
        public var `topicDetails`: ChannelTopicDetails?
    }

    public class ChannelAuditDetails: Codable {
        public init (`communityGuidelinesGoodStanding`: Bool?, `contentIdClaimsGoodStanding`: Bool?, `copyrightStrikesGoodStanding`: Bool?) {
            self.`communityGuidelinesGoodStanding` = `communityGuidelinesGoodStanding`
            self.`contentIdClaimsGoodStanding` = `contentIdClaimsGoodStanding`
            self.`copyrightStrikesGoodStanding` = `copyrightStrikesGoodStanding`
        }
        public var `communityGuidelinesGoodStanding`: Bool?
        public var `contentIdClaimsGoodStanding`: Bool?
        public var `copyrightStrikesGoodStanding`: Bool?
    }

    public class ChannelBannerResource: Codable {
        public init (`etag`: String?, `kind`: String?, `url`: String?) {
            self.`etag` = `etag`
            self.`kind` = `kind`
            self.`url` = `url`
        }
        public var `etag`: String?
        public var `kind`: String?
        public var `url`: String?
    }

    public class ChannelBrandingSettings: Codable {
        public init (`channel`: ChannelSettings?, `hints`: [PropertyValue]?, `image`: ImageSettings?, `watch`: WatchSettings?) {
            self.`channel` = `channel`
            self.`hints` = `hints`
            self.`image` = `image`
            self.`watch` = `watch`
        }
        public var `channel`: ChannelSettings?
        public var `hints`: [PropertyValue]?
        public var `image`: ImageSettings?
        public var `watch`: WatchSettings?
    }

    public class ChannelCard: Codable {
        public init (`channelId`: String?, `customMessage`: String?) {
            self.`channelId` = `channelId`
            self.`customMessage` = `customMessage`
        }
        public var `channelId`: String?
        public var `customMessage`: String?
    }

    public class ChannelContentDetails_relatedPlaylists: Codable {
        public init (`favorites`: String?, `likes`: String?, `uploads`: String?, `watchHistory`: String?, `watchLater`: String?) {
            self.`favorites` = `favorites`
            self.`likes` = `likes`
            self.`uploads` = `uploads`
            self.`watchHistory` = `watchHistory`
            self.`watchLater` = `watchLater`
        }
        public var `favorites`: String?
        public var `likes`: String?
        public var `uploads`: String?
        public var `watchHistory`: String?
        public var `watchLater`: String?
    }

    public class ChannelContentDetails: Codable {
        public init (`relatedPlaylists`: ChannelContentDetails_relatedPlaylists?) {
            self.`relatedPlaylists` = `relatedPlaylists`
        }
        public var `relatedPlaylists`: ChannelContentDetails_relatedPlaylists?
    }

    public class ChannelContentOwnerDetails: Codable {
        public init (`contentOwner`: String?, `timeLinked`: String?) {
            self.`contentOwner` = `contentOwner`
            self.`timeLinked` = `timeLinked`
        }
        public var `contentOwner`: String?
        public var `timeLinked`: String?
    }

    public class ChannelConversionPing: Codable {
        public init (`context`: String?, `conversionUrl`: String?) {
            self.`context` = `context`
            self.`conversionUrl` = `conversionUrl`
        }
        public var `context`: String?
        public var `conversionUrl`: String?
    }

    public class ChannelConversionPings: Codable {
        public init (`pings`: [ChannelConversionPing]?) {
            self.`pings` = `pings`
        }
        public var `pings`: [ChannelConversionPing]?
    }

    public class ChannelElement: Codable {
        public init (`channelId`: String?, `customMessage`: String?) {
            self.`channelId` = `channelId`
            self.`customMessage` = `customMessage`
        }
        public var `channelId`: String?
        public var `customMessage`: String?
    }

    public class ChannelListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Channel]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Channel]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class ChannelLocalization: Codable {
        public init (`description`: String?, `title`: String?) {
            self.`description` = `description`
            self.`title` = `title`
        }
        public var `description`: String?
        public var `title`: String?
    }

    public class ChannelProfileDetails: Codable {
        public init (`channelId`: String?, `channelUrl`: String?, `displayName`: String?, `profileImageUrl`: String?) {
            self.`channelId` = `channelId`
            self.`channelUrl` = `channelUrl`
            self.`displayName` = `displayName`
            self.`profileImageUrl` = `profileImageUrl`
        }
        public var `channelId`: String?
        public var `channelUrl`: String?
        public var `displayName`: String?
        public var `profileImageUrl`: String?
    }

    public typealias ChannelSection_localizations = [String: ChannelSectionLocalization]

    public class ChannelSection: Codable {
        public init (`contentDetails`: ChannelSectionContentDetails?, `etag`: String?, `id`: String?, `kind`: String?, `localizations`: ChannelSection_localizations?, `snippet`: ChannelSectionSnippet?, `targeting`: ChannelSectionTargeting?) {
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`localizations` = `localizations`
            self.`snippet` = `snippet`
            self.`targeting` = `targeting`
        }
        public var `contentDetails`: ChannelSectionContentDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `localizations`: ChannelSection_localizations?
        public var `snippet`: ChannelSectionSnippet?
        public var `targeting`: ChannelSectionTargeting?
    }

    public class ChannelSectionContentDetails: Codable {
        public init (`channels`: [String]?, `playlists`: [String]?) {
            self.`channels` = `channels`
            self.`playlists` = `playlists`
        }
        public var `channels`: [String]?
        public var `playlists`: [String]?
    }

    public class ChannelSectionListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [ChannelSection]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [ChannelSection]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class ChannelSectionLocalization: Codable {
        public init (`title`: String?) {
            self.`title` = `title`
        }
        public var `title`: String?
    }

    public class ChannelSectionSnippet: Codable {
        public init (`channelId`: String?, `defaultLanguage`: String?, `localized`: ChannelSectionLocalization?, `position`: Int?, `style`: String?, `title`: String?, `type`: String?) {
            self.`channelId` = `channelId`
            self.`defaultLanguage` = `defaultLanguage`
            self.`localized` = `localized`
            self.`position` = `position`
            self.`style` = `style`
            self.`title` = `title`
            self.`type` = `type`
        }
        public var `channelId`: String?
        public var `defaultLanguage`: String?
        public var `localized`: ChannelSectionLocalization?
        public var `position`: Int?
        public var `style`: String?
        public var `title`: String?
        public var `type`: String?
    }

    public class ChannelSectionTargeting: Codable {
        public init (`countries`: [String]?, `languages`: [String]?, `regions`: [String]?) {
            self.`countries` = `countries`
            self.`languages` = `languages`
            self.`regions` = `regions`
        }
        public var `countries`: [String]?
        public var `languages`: [String]?
        public var `regions`: [String]?
    }

    public class ChannelSettings: Codable {
        public init (`country`: String?, `defaultLanguage`: String?, `defaultTab`: String?, `description`: String?, `featuredChannelsTitle`: String?, `featuredChannelsUrls`: [String]?, `keywords`: String?, `moderateComments`: Bool?, `profileColor`: String?, `showBrowseView`: Bool?, `showRelatedChannels`: Bool?, `title`: String?, `trackingAnalyticsAccountId`: String?, `unsubscribedTrailer`: String?) {
            self.`country` = `country`
            self.`defaultLanguage` = `defaultLanguage`
            self.`defaultTab` = `defaultTab`
            self.`description` = `description`
            self.`featuredChannelsTitle` = `featuredChannelsTitle`
            self.`featuredChannelsUrls` = `featuredChannelsUrls`
            self.`keywords` = `keywords`
            self.`moderateComments` = `moderateComments`
            self.`profileColor` = `profileColor`
            self.`showBrowseView` = `showBrowseView`
            self.`showRelatedChannels` = `showRelatedChannels`
            self.`title` = `title`
            self.`trackingAnalyticsAccountId` = `trackingAnalyticsAccountId`
            self.`unsubscribedTrailer` = `unsubscribedTrailer`
        }
        public var `country`: String?
        public var `defaultLanguage`: String?
        public var `defaultTab`: String?
        public var `description`: String?
        public var `featuredChannelsTitle`: String?
        public var `featuredChannelsUrls`: [String]?
        public var `keywords`: String?
        public var `moderateComments`: Bool?
        public var `profileColor`: String?
        public var `showBrowseView`: Bool?
        public var `showRelatedChannels`: Bool?
        public var `title`: String?
        public var `trackingAnalyticsAccountId`: String?
        public var `unsubscribedTrailer`: String?
    }

    public class ChannelSnippet: Codable {
        public init (`country`: String?, `customUrl`: String?, `defaultLanguage`: String?, `description`: String?, `localized`: ChannelLocalization?, `publishedAt`: String?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`country` = `country`
            self.`customUrl` = `customUrl`
            self.`defaultLanguage` = `defaultLanguage`
            self.`description` = `description`
            self.`localized` = `localized`
            self.`publishedAt` = `publishedAt`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `country`: String?
        public var `customUrl`: String?
        public var `defaultLanguage`: String?
        public var `description`: String?
        public var `localized`: ChannelLocalization?
        public var `publishedAt`: String?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class ChannelStatistics: Codable {
        public init (`commentCount`: String?, `hiddenSubscriberCount`: Bool?, `subscriberCount`: String?, `videoCount`: String?, `viewCount`: String?) {
            self.`commentCount` = `commentCount`
            self.`hiddenSubscriberCount` = `hiddenSubscriberCount`
            self.`subscriberCount` = `subscriberCount`
            self.`videoCount` = `videoCount`
            self.`viewCount` = `viewCount`
        }
        public var `commentCount`: String?
        public var `hiddenSubscriberCount`: Bool?
        public var `subscriberCount`: String?
        public var `videoCount`: String?
        public var `viewCount`: String?
    }

    public class ChannelStatus: Codable {
        public init (`isLinked`: Bool?, `longUploadsStatus`: String?, `madeForKids`: Bool?, `privacyStatus`: String?, `selfDeclaredMadeForKids`: Bool?) {
            self.`isLinked` = `isLinked`
            self.`longUploadsStatus` = `longUploadsStatus`
            self.`madeForKids` = `madeForKids`
            self.`privacyStatus` = `privacyStatus`
            self.`selfDeclaredMadeForKids` = `selfDeclaredMadeForKids`
        }
        public var `isLinked`: Bool?
        public var `longUploadsStatus`: String?
        public var `madeForKids`: Bool?
        public var `privacyStatus`: String?
        public var `selfDeclaredMadeForKids`: Bool?
    }

    public class ChannelToStoreLinkDetails: Codable {
        public init (`storeName`: String?, `storeUrl`: String?) {
            self.`storeName` = `storeName`
            self.`storeUrl` = `storeUrl`
        }
        public var `storeName`: String?
        public var `storeUrl`: String?
    }

    public class ChannelTopicDetails: Codable {
        public init (`topicCategories`: [String]?, `topicIds`: [String]?) {
            self.`topicCategories` = `topicCategories`
            self.`topicIds` = `topicIds`
        }
        public var `topicCategories`: [String]?
        public var `topicIds`: [String]?
    }

    public class Comment: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: CommentSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: CommentSnippet?
    }

    public class CommentListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Comment]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Comment]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class CommentSnippet: Codable {
        public init (`authorChannelId`: CommentSnippetAuthorChannelId?, `authorChannelUrl`: String?, `authorDisplayName`: String?, `authorProfileImageUrl`: String?, `canRate`: Bool?, `channelId`: String?, `likeCount`: Int?, `moderationStatus`: String?, `parentId`: String?, `publishedAt`: String?, `textDisplay`: String?, `textOriginal`: String?, `updatedAt`: String?, `videoId`: String?, `viewerRating`: String?) {
            self.`authorChannelId` = `authorChannelId`
            self.`authorChannelUrl` = `authorChannelUrl`
            self.`authorDisplayName` = `authorDisplayName`
            self.`authorProfileImageUrl` = `authorProfileImageUrl`
            self.`canRate` = `canRate`
            self.`channelId` = `channelId`
            self.`likeCount` = `likeCount`
            self.`moderationStatus` = `moderationStatus`
            self.`parentId` = `parentId`
            self.`publishedAt` = `publishedAt`
            self.`textDisplay` = `textDisplay`
            self.`textOriginal` = `textOriginal`
            self.`updatedAt` = `updatedAt`
            self.`videoId` = `videoId`
            self.`viewerRating` = `viewerRating`
        }
        public var `authorChannelId`: CommentSnippetAuthorChannelId?
        public var `authorChannelUrl`: String?
        public var `authorDisplayName`: String?
        public var `authorProfileImageUrl`: String?
        public var `canRate`: Bool?
        public var `channelId`: String?
        public var `likeCount`: Int?
        public var `moderationStatus`: String?
        public var `parentId`: String?
        public var `publishedAt`: String?
        public var `textDisplay`: String?
        public var `textOriginal`: String?
        public var `updatedAt`: String?
        public var `videoId`: String?
        public var `viewerRating`: String?
    }

    public class CommentSnippetAuthorChannelId: Codable {
        public init (`value`: String?) {
            self.`value` = `value`
        }
        public var `value`: String?
    }

    public class CommentThread: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `replies`: CommentThreadReplies?, `snippet`: CommentThreadSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`replies` = `replies`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `replies`: CommentThreadReplies?
        public var `snippet`: CommentThreadSnippet?
    }

    public class CommentThreadListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [CommentThread]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [CommentThread]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class CommentThreadReplies: Codable {
        public init (`comments`: [Comment]?) {
            self.`comments` = `comments`
        }
        public var `comments`: [Comment]?
    }

    public class CommentThreadSnippet: Codable {
        public init (`canReply`: Bool?, `channelId`: String?, `isPublic`: Bool?, `topLevelComment`: Comment?, `totalReplyCount`: Int?, `videoId`: String?) {
            self.`canReply` = `canReply`
            self.`channelId` = `channelId`
            self.`isPublic` = `isPublic`
            self.`topLevelComment` = `topLevelComment`
            self.`totalReplyCount` = `totalReplyCount`
            self.`videoId` = `videoId`
        }
        public var `canReply`: Bool?
        public var `channelId`: String?
        public var `isPublic`: Bool?
        public var `topLevelComment`: Comment?
        public var `totalReplyCount`: Int?
        public var `videoId`: String?
    }

    public class ContentRating: Codable {
        public init (`acbRating`: String?, `agcomRating`: String?, `anatelRating`: String?, `bbfcRating`: String?, `bfvcRating`: String?, `bmukkRating`: String?, `catvRating`: String?, `catvfrRating`: String?, `cbfcRating`: String?, `cccRating`: String?, `cceRating`: String?, `chfilmRating`: String?, `chvrsRating`: String?, `cicfRating`: String?, `cnaRating`: String?, `cncRating`: String?, `csaRating`: String?, `cscfRating`: String?, `czfilmRating`: String?, `djctqRating`: String?, `djctqRatingReasons`: [String]?, `ecbmctRating`: String?, `eefilmRating`: String?, `egfilmRating`: String?, `eirinRating`: String?, `fcbmRating`: String?, `fcoRating`: String?, `fmocRating`: String?, `fpbRating`: String?, `fpbRatingReasons`: [String]?, `fskRating`: String?, `grfilmRating`: String?, `icaaRating`: String?, `ifcoRating`: String?, `ilfilmRating`: String?, `incaaRating`: String?, `kfcbRating`: String?, `kijkwijzerRating`: String?, `kmrbRating`: String?, `lsfRating`: String?, `mccaaRating`: String?, `mccypRating`: String?, `mcstRating`: String?, `mdaRating`: String?, `medietilsynetRating`: String?, `mekuRating`: String?, `menaMpaaRating`: String?, `mibacRating`: String?, `mocRating`: String?, `moctwRating`: String?, `mpaaRating`: String?, `mpaatRating`: String?, `mtrcbRating`: String?, `nbcRating`: String?, `nbcplRating`: String?, `nfrcRating`: String?, `nfvcbRating`: String?, `nkclvRating`: String?, `nmcRating`: String?, `oflcRating`: String?, `pefilmRating`: String?, `rcnofRating`: String?, `resorteviolenciaRating`: String?, `rtcRating`: String?, `rteRating`: String?, `russiaRating`: String?, `skfilmRating`: String?, `smaisRating`: String?, `smsaRating`: String?, `tvpgRating`: String?, `ytRating`: String?) {
            self.`acbRating` = `acbRating`
            self.`agcomRating` = `agcomRating`
            self.`anatelRating` = `anatelRating`
            self.`bbfcRating` = `bbfcRating`
            self.`bfvcRating` = `bfvcRating`
            self.`bmukkRating` = `bmukkRating`
            self.`catvRating` = `catvRating`
            self.`catvfrRating` = `catvfrRating`
            self.`cbfcRating` = `cbfcRating`
            self.`cccRating` = `cccRating`
            self.`cceRating` = `cceRating`
            self.`chfilmRating` = `chfilmRating`
            self.`chvrsRating` = `chvrsRating`
            self.`cicfRating` = `cicfRating`
            self.`cnaRating` = `cnaRating`
            self.`cncRating` = `cncRating`
            self.`csaRating` = `csaRating`
            self.`cscfRating` = `cscfRating`
            self.`czfilmRating` = `czfilmRating`
            self.`djctqRating` = `djctqRating`
            self.`djctqRatingReasons` = `djctqRatingReasons`
            self.`ecbmctRating` = `ecbmctRating`
            self.`eefilmRating` = `eefilmRating`
            self.`egfilmRating` = `egfilmRating`
            self.`eirinRating` = `eirinRating`
            self.`fcbmRating` = `fcbmRating`
            self.`fcoRating` = `fcoRating`
            self.`fmocRating` = `fmocRating`
            self.`fpbRating` = `fpbRating`
            self.`fpbRatingReasons` = `fpbRatingReasons`
            self.`fskRating` = `fskRating`
            self.`grfilmRating` = `grfilmRating`
            self.`icaaRating` = `icaaRating`
            self.`ifcoRating` = `ifcoRating`
            self.`ilfilmRating` = `ilfilmRating`
            self.`incaaRating` = `incaaRating`
            self.`kfcbRating` = `kfcbRating`
            self.`kijkwijzerRating` = `kijkwijzerRating`
            self.`kmrbRating` = `kmrbRating`
            self.`lsfRating` = `lsfRating`
            self.`mccaaRating` = `mccaaRating`
            self.`mccypRating` = `mccypRating`
            self.`mcstRating` = `mcstRating`
            self.`mdaRating` = `mdaRating`
            self.`medietilsynetRating` = `medietilsynetRating`
            self.`mekuRating` = `mekuRating`
            self.`menaMpaaRating` = `menaMpaaRating`
            self.`mibacRating` = `mibacRating`
            self.`mocRating` = `mocRating`
            self.`moctwRating` = `moctwRating`
            self.`mpaaRating` = `mpaaRating`
            self.`mpaatRating` = `mpaatRating`
            self.`mtrcbRating` = `mtrcbRating`
            self.`nbcRating` = `nbcRating`
            self.`nbcplRating` = `nbcplRating`
            self.`nfrcRating` = `nfrcRating`
            self.`nfvcbRating` = `nfvcbRating`
            self.`nkclvRating` = `nkclvRating`
            self.`nmcRating` = `nmcRating`
            self.`oflcRating` = `oflcRating`
            self.`pefilmRating` = `pefilmRating`
            self.`rcnofRating` = `rcnofRating`
            self.`resorteviolenciaRating` = `resorteviolenciaRating`
            self.`rtcRating` = `rtcRating`
            self.`rteRating` = `rteRating`
            self.`russiaRating` = `russiaRating`
            self.`skfilmRating` = `skfilmRating`
            self.`smaisRating` = `smaisRating`
            self.`smsaRating` = `smsaRating`
            self.`tvpgRating` = `tvpgRating`
            self.`ytRating` = `ytRating`
        }
        public var `acbRating`: String?
        public var `agcomRating`: String?
        public var `anatelRating`: String?
        public var `bbfcRating`: String?
        public var `bfvcRating`: String?
        public var `bmukkRating`: String?
        public var `catvRating`: String?
        public var `catvfrRating`: String?
        public var `cbfcRating`: String?
        public var `cccRating`: String?
        public var `cceRating`: String?
        public var `chfilmRating`: String?
        public var `chvrsRating`: String?
        public var `cicfRating`: String?
        public var `cnaRating`: String?
        public var `cncRating`: String?
        public var `csaRating`: String?
        public var `cscfRating`: String?
        public var `czfilmRating`: String?
        public var `djctqRating`: String?
        public var `djctqRatingReasons`: [String]?
        public var `ecbmctRating`: String?
        public var `eefilmRating`: String?
        public var `egfilmRating`: String?
        public var `eirinRating`: String?
        public var `fcbmRating`: String?
        public var `fcoRating`: String?
        public var `fmocRating`: String?
        public var `fpbRating`: String?
        public var `fpbRatingReasons`: [String]?
        public var `fskRating`: String?
        public var `grfilmRating`: String?
        public var `icaaRating`: String?
        public var `ifcoRating`: String?
        public var `ilfilmRating`: String?
        public var `incaaRating`: String?
        public var `kfcbRating`: String?
        public var `kijkwijzerRating`: String?
        public var `kmrbRating`: String?
        public var `lsfRating`: String?
        public var `mccaaRating`: String?
        public var `mccypRating`: String?
        public var `mcstRating`: String?
        public var `mdaRating`: String?
        public var `medietilsynetRating`: String?
        public var `mekuRating`: String?
        public var `menaMpaaRating`: String?
        public var `mibacRating`: String?
        public var `mocRating`: String?
        public var `moctwRating`: String?
        public var `mpaaRating`: String?
        public var `mpaatRating`: String?
        public var `mtrcbRating`: String?
        public var `nbcRating`: String?
        public var `nbcplRating`: String?
        public var `nfrcRating`: String?
        public var `nfvcbRating`: String?
        public var `nkclvRating`: String?
        public var `nmcRating`: String?
        public var `oflcRating`: String?
        public var `pefilmRating`: String?
        public var `rcnofRating`: String?
        public var `resorteviolenciaRating`: String?
        public var `rtcRating`: String?
        public var `rteRating`: String?
        public var `russiaRating`: String?
        public var `skfilmRating`: String?
        public var `smaisRating`: String?
        public var `smsaRating`: String?
        public var `tvpgRating`: String?
        public var `ytRating`: String?
    }

    public class Endscreen: Codable {
        public init (`elements`: [EndscreenElement]?, `startOffset`: String?) {
            self.`elements` = `elements`
            self.`startOffset` = `startOffset`
        }
        public var `elements`: [EndscreenElement]?
        public var `startOffset`: String?
    }

    public class EndscreenElement: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: EndscreenElementSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: EndscreenElementSnippet?
    }

    public class EndscreenElementSnippet: Codable {
        public init (`channelElement`: ChannelElement?, `duration`: String?, `left`: Double?, `linkElement`: LinkElement?, `merchandiseElement`: MerchandiseElement?, `playlistElement`: PlaylistElement?, `startOffset`: String?, `subscribeElement`: SubscribeElement?, `top`: Double?, `videoElement`: VideoElement?, `width`: Double?) {
            self.`channelElement` = `channelElement`
            self.`duration` = `duration`
            self.`left` = `left`
            self.`linkElement` = `linkElement`
            self.`merchandiseElement` = `merchandiseElement`
            self.`playlistElement` = `playlistElement`
            self.`startOffset` = `startOffset`
            self.`subscribeElement` = `subscribeElement`
            self.`top` = `top`
            self.`videoElement` = `videoElement`
            self.`width` = `width`
        }
        public var `channelElement`: ChannelElement?
        public var `duration`: String?
        public var `left`: Double?
        public var `linkElement`: LinkElement?
        public var `merchandiseElement`: MerchandiseElement?
        public var `playlistElement`: PlaylistElement?
        public var `startOffset`: String?
        public var `subscribeElement`: SubscribeElement?
        public var `top`: Double?
        public var `videoElement`: VideoElement?
        public var `width`: Double?
    }

    public class EndscreenGetResponse: Codable {
        public init (`etag`: String?, `kind`: String?, `resource`: Endscreen?) {
            self.`etag` = `etag`
            self.`kind` = `kind`
            self.`resource` = `resource`
        }
        public var `etag`: String?
        public var `kind`: String?
        public var `resource`: Endscreen?
    }

    public class Entity: Codable {
        public init (`id`: String?, `typeId`: String?, `url`: String?) {
            self.`id` = `id`
            self.`typeId` = `typeId`
            self.`url` = `url`
        }
        public var `id`: String?
        public var `typeId`: String?
        public var `url`: String?
    }

    public class GeoPoint: Codable {
        public init (`altitude`: Double?, `latitude`: Double?, `longitude`: Double?) {
            self.`altitude` = `altitude`
            self.`latitude` = `latitude`
            self.`longitude` = `longitude`
        }
        public var `altitude`: Double?
        public var `latitude`: Double?
        public var `longitude`: Double?
    }

    public class GuideCategory: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: GuideCategorySnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: GuideCategorySnippet?
    }

    public class GuideCategoryListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [GuideCategory]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [GuideCategory]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class GuideCategorySnippet: Codable {
        public init (`channelId`: String?, `title`: String?) {
            self.`channelId` = `channelId`
            self.`title` = `title`
        }
        public var `channelId`: String?
        public var `title`: String?
    }

    public class I18nLanguage: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: I18nLanguageSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: I18nLanguageSnippet?
    }

    public class I18nLanguageListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [I18nLanguage]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [I18nLanguage]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class I18nLanguageSnippet: Codable {
        public init (`hl`: String?, `name`: String?) {
            self.`hl` = `hl`
            self.`name` = `name`
        }
        public var `hl`: String?
        public var `name`: String?
    }

    public class I18nRegion: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: I18nRegionSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: I18nRegionSnippet?
    }

    public class I18nRegionListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [I18nRegion]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [I18nRegion]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class I18nRegionSnippet: Codable {
        public init (`gl`: String?, `name`: String?) {
            self.`gl` = `gl`
            self.`name` = `name`
        }
        public var `gl`: String?
        public var `name`: String?
    }

    public class ImageSettings: Codable {
        public init (`backgroundImageUrl`: LocalizedProperty?, `bannerExternalUrl`: String?, `bannerImageUrl`: String?, `bannerMobileExtraHdImageUrl`: String?, `bannerMobileHdImageUrl`: String?, `bannerMobileImageUrl`: String?, `bannerMobileLowImageUrl`: String?, `bannerMobileMediumHdImageUrl`: String?, `bannerTabletExtraHdImageUrl`: String?, `bannerTabletHdImageUrl`: String?, `bannerTabletImageUrl`: String?, `bannerTabletLowImageUrl`: String?, `bannerTvHighImageUrl`: String?, `bannerTvImageUrl`: String?, `bannerTvLowImageUrl`: String?, `bannerTvMediumImageUrl`: String?, `largeBrandedBannerImageImapScript`: LocalizedProperty?, `largeBrandedBannerImageUrl`: LocalizedProperty?, `smallBrandedBannerImageImapScript`: LocalizedProperty?, `smallBrandedBannerImageUrl`: LocalizedProperty?, `trackingImageUrl`: String?, `watchIconImageUrl`: String?) {
            self.`backgroundImageUrl` = `backgroundImageUrl`
            self.`bannerExternalUrl` = `bannerExternalUrl`
            self.`bannerImageUrl` = `bannerImageUrl`
            self.`bannerMobileExtraHdImageUrl` = `bannerMobileExtraHdImageUrl`
            self.`bannerMobileHdImageUrl` = `bannerMobileHdImageUrl`
            self.`bannerMobileImageUrl` = `bannerMobileImageUrl`
            self.`bannerMobileLowImageUrl` = `bannerMobileLowImageUrl`
            self.`bannerMobileMediumHdImageUrl` = `bannerMobileMediumHdImageUrl`
            self.`bannerTabletExtraHdImageUrl` = `bannerTabletExtraHdImageUrl`
            self.`bannerTabletHdImageUrl` = `bannerTabletHdImageUrl`
            self.`bannerTabletImageUrl` = `bannerTabletImageUrl`
            self.`bannerTabletLowImageUrl` = `bannerTabletLowImageUrl`
            self.`bannerTvHighImageUrl` = `bannerTvHighImageUrl`
            self.`bannerTvImageUrl` = `bannerTvImageUrl`
            self.`bannerTvLowImageUrl` = `bannerTvLowImageUrl`
            self.`bannerTvMediumImageUrl` = `bannerTvMediumImageUrl`
            self.`largeBrandedBannerImageImapScript` = `largeBrandedBannerImageImapScript`
            self.`largeBrandedBannerImageUrl` = `largeBrandedBannerImageUrl`
            self.`smallBrandedBannerImageImapScript` = `smallBrandedBannerImageImapScript`
            self.`smallBrandedBannerImageUrl` = `smallBrandedBannerImageUrl`
            self.`trackingImageUrl` = `trackingImageUrl`
            self.`watchIconImageUrl` = `watchIconImageUrl`
        }
        public var `backgroundImageUrl`: LocalizedProperty?
        public var `bannerExternalUrl`: String?
        public var `bannerImageUrl`: String?
        public var `bannerMobileExtraHdImageUrl`: String?
        public var `bannerMobileHdImageUrl`: String?
        public var `bannerMobileImageUrl`: String?
        public var `bannerMobileLowImageUrl`: String?
        public var `bannerMobileMediumHdImageUrl`: String?
        public var `bannerTabletExtraHdImageUrl`: String?
        public var `bannerTabletHdImageUrl`: String?
        public var `bannerTabletImageUrl`: String?
        public var `bannerTabletLowImageUrl`: String?
        public var `bannerTvHighImageUrl`: String?
        public var `bannerTvImageUrl`: String?
        public var `bannerTvLowImageUrl`: String?
        public var `bannerTvMediumImageUrl`: String?
        public var `largeBrandedBannerImageImapScript`: LocalizedProperty?
        public var `largeBrandedBannerImageUrl`: LocalizedProperty?
        public var `smallBrandedBannerImageImapScript`: LocalizedProperty?
        public var `smallBrandedBannerImageUrl`: LocalizedProperty?
        public var `trackingImageUrl`: String?
        public var `watchIconImageUrl`: String?
    }

    public class InfoCard: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: InfoCardSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: InfoCardSnippet?
    }

    public class InfoCardSnippet: Codable {
        public init (`channelInfocard`: ChannelCard?, `linkInfocard`: LinkCard?, `playlistInfocard`: PlaylistCard?, `teaser`: InfoCardSnippetTeaser?, `videoInfocard`: VideoCard?) {
            self.`channelInfocard` = `channelInfocard`
            self.`linkInfocard` = `linkInfocard`
            self.`playlistInfocard` = `playlistInfocard`
            self.`teaser` = `teaser`
            self.`videoInfocard` = `videoInfocard`
        }
        public var `channelInfocard`: ChannelCard?
        public var `linkInfocard`: LinkCard?
        public var `playlistInfocard`: PlaylistCard?
        public var `teaser`: InfoCardSnippetTeaser?
        public var `videoInfocard`: VideoCard?
    }

    public class InfoCardSnippetTeaser: Codable {
        public init (`teaserStartOffset`: String?, `teaserText`: String?) {
            self.`teaserStartOffset` = `teaserStartOffset`
            self.`teaserText` = `teaserText`
        }
        public var `teaserStartOffset`: String?
        public var `teaserText`: String?
    }

    public class InfoCards: Codable {
        public init (`items`: [InfoCard]?) {
            self.`items` = `items`
        }
        public var `items`: [InfoCard]?
    }

    public class InfocardListResponse: Codable {
        public init (`etag`: String?, `items`: [InfoCard]?, `kind`: String?) {
            self.`etag` = `etag`
            self.`items` = `items`
            self.`kind` = `kind`
        }
        public var `etag`: String?
        public var `items`: [InfoCard]?
        public var `kind`: String?
    }

    public class IngestionInfo: Codable {
        public init (`backupIngestionAddress`: String?, `ingestionAddress`: String?, `rtmpsBackupIngestionAddress`: String?, `rtmpsIngestionAddress`: String?, `streamName`: String?) {
            self.`backupIngestionAddress` = `backupIngestionAddress`
            self.`ingestionAddress` = `ingestionAddress`
            self.`rtmpsBackupIngestionAddress` = `rtmpsBackupIngestionAddress`
            self.`rtmpsIngestionAddress` = `rtmpsIngestionAddress`
            self.`streamName` = `streamName`
        }
        public var `backupIngestionAddress`: String?
        public var `ingestionAddress`: String?
        public var `rtmpsBackupIngestionAddress`: String?
        public var `rtmpsIngestionAddress`: String?
        public var `streamName`: String?
    }

    public class InvideoBranding: Codable {
        public init (`imageBytes`: String?, `imageUrl`: String?, `position`: InvideoPosition?, `targetChannelId`: String?, `timing`: InvideoTiming?) {
            self.`imageBytes` = `imageBytes`
            self.`imageUrl` = `imageUrl`
            self.`position` = `position`
            self.`targetChannelId` = `targetChannelId`
            self.`timing` = `timing`
        }
        public var `imageBytes`: String?
        public var `imageUrl`: String?
        public var `position`: InvideoPosition?
        public var `targetChannelId`: String?
        public var `timing`: InvideoTiming?
    }

    public class InvideoPosition: Codable {
        public init (`cornerPosition`: String?, `type`: String?) {
            self.`cornerPosition` = `cornerPosition`
            self.`type` = `type`
        }
        public var `cornerPosition`: String?
        public var `type`: String?
    }

    public class InvideoPromotion: Codable {
        public init (`defaultTiming`: InvideoTiming?, `items`: [PromotedItem]?, `position`: InvideoPosition?, `useSmartTiming`: Bool?) {
            self.`defaultTiming` = `defaultTiming`
            self.`items` = `items`
            self.`position` = `position`
            self.`useSmartTiming` = `useSmartTiming`
        }
        public var `defaultTiming`: InvideoTiming?
        public var `items`: [PromotedItem]?
        public var `position`: InvideoPosition?
        public var `useSmartTiming`: Bool?
    }

    public class InvideoTiming: Codable {
        public init (`durationMs`: String?, `offsetMs`: String?, `type`: String?) {
            self.`durationMs` = `durationMs`
            self.`offsetMs` = `offsetMs`
            self.`type` = `type`
        }
        public var `durationMs`: String?
        public var `offsetMs`: String?
        public var `type`: String?
    }

    public class LanguageTag: Codable {
        public init (`value`: String?) {
            self.`value` = `value`
        }
        public var `value`: String?
    }

    public class LevelDetails: Codable {
        public init (`displayName`: String?) {
            self.`displayName` = `displayName`
        }
        public var `displayName`: String?
    }

    public class LinkCard: Codable {
        public init (`customLinkText`: String?, `externalImageUrl`: String?, `targetUrl`: String?, `title`: String?, `uploadedImage`: LinkCardUploadedImage?) {
            self.`customLinkText` = `customLinkText`
            self.`externalImageUrl` = `externalImageUrl`
            self.`targetUrl` = `targetUrl`
            self.`title` = `title`
            self.`uploadedImage` = `uploadedImage`
        }
        public var `customLinkText`: String?
        public var `externalImageUrl`: String?
        public var `targetUrl`: String?
        public var `title`: String?
        public var `uploadedImage`: LinkCardUploadedImage?
    }

    public class LinkCardUploadedImage: Codable {
        public init (`imageFile`: String?, `version`: String?) {
            self.`imageFile` = `imageFile`
            self.`version` = `version`
        }
        public var `imageFile`: String?
        public var `version`: String?
    }

    public class LinkElement: Codable {
        public init (`callToActionType`: String?, `customLinkText`: String?, `externalImageUrl`: String?, `targetUrl`: String?, `uploadedImage`: LinkElementUploadedImage?, `websiteType`: String?) {
            self.`callToActionType` = `callToActionType`
            self.`customLinkText` = `customLinkText`
            self.`externalImageUrl` = `externalImageUrl`
            self.`targetUrl` = `targetUrl`
            self.`uploadedImage` = `uploadedImage`
            self.`websiteType` = `websiteType`
        }
        public var `callToActionType`: String?
        public var `customLinkText`: String?
        public var `externalImageUrl`: String?
        public var `targetUrl`: String?
        public var `uploadedImage`: LinkElementUploadedImage?
        public var `websiteType`: String?
    }

    public class LinkElementUploadedImage: Codable {
        public init (`imageFile`: String?, `version`: String?) {
            self.`imageFile` = `imageFile`
            self.`version` = `version`
        }
        public var `imageFile`: String?
        public var `version`: String?
    }

    public class LiveBroadcast: Codable {
        public init (`contentDetails`: LiveBroadcastContentDetails?, `etag`: String?, `id`: String?, `kind`: String?, `snippet`: LiveBroadcastSnippet?, `statistics`: LiveBroadcastStatistics?, `status`: LiveBroadcastStatus?) {
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
            self.`statistics` = `statistics`
            self.`status` = `status`
        }
        public var `contentDetails`: LiveBroadcastContentDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: LiveBroadcastSnippet?
        public var `statistics`: LiveBroadcastStatistics?
        public var `status`: LiveBroadcastStatus?
    }

    public class LiveBroadcastContentDetails: Codable {
        public init (`boundStreamId`: String?, `boundStreamLastUpdateTimeMs`: String?, `closedCaptionsType`: String?, `enableAutoStart`: Bool?, `enableAutoStop`: Bool?, `enableClosedCaptions`: Bool?, `enableContentEncryption`: Bool?, `enableDvr`: Bool?, `enableEmbed`: Bool?, `enableLowLatency`: Bool?, `latencyPreference`: String?, `mesh`: String?, `monitorStream`: MonitorStreamInfo?, `projection`: String?, `recordFromStart`: Bool?, `startWithSlate`: Bool?) {
            self.`boundStreamId` = `boundStreamId`
            self.`boundStreamLastUpdateTimeMs` = `boundStreamLastUpdateTimeMs`
            self.`closedCaptionsType` = `closedCaptionsType`
            self.`enableAutoStart` = `enableAutoStart`
            self.`enableAutoStop` = `enableAutoStop`
            self.`enableClosedCaptions` = `enableClosedCaptions`
            self.`enableContentEncryption` = `enableContentEncryption`
            self.`enableDvr` = `enableDvr`
            self.`enableEmbed` = `enableEmbed`
            self.`enableLowLatency` = `enableLowLatency`
            self.`latencyPreference` = `latencyPreference`
            self.`mesh` = `mesh`
            self.`monitorStream` = `monitorStream`
            self.`projection` = `projection`
            self.`recordFromStart` = `recordFromStart`
            self.`startWithSlate` = `startWithSlate`
        }
        public var `boundStreamId`: String?
        public var `boundStreamLastUpdateTimeMs`: String?
        public var `closedCaptionsType`: String?
        public var `enableAutoStart`: Bool?
        public var `enableAutoStop`: Bool?
        public var `enableClosedCaptions`: Bool?
        public var `enableContentEncryption`: Bool?
        public var `enableDvr`: Bool?
        public var `enableEmbed`: Bool?
        public var `enableLowLatency`: Bool?
        public var `latencyPreference`: String?
        public var `mesh`: String?
        public var `monitorStream`: MonitorStreamInfo?
        public var `projection`: String?
        public var `recordFromStart`: Bool?
        public var `startWithSlate`: Bool?
    }

    public class LiveBroadcastListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [LiveBroadcast]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [LiveBroadcast]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class LiveBroadcastSnippet: Codable {
        public init (`actualEndTime`: String?, `actualStartTime`: String?, `channelId`: String?, `description`: String?, `isDefaultBroadcast`: Bool?, `liveChatId`: String?, `publishedAt`: String?, `scheduledEndTime`: String?, `scheduledStartTime`: String?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`actualEndTime` = `actualEndTime`
            self.`actualStartTime` = `actualStartTime`
            self.`channelId` = `channelId`
            self.`description` = `description`
            self.`isDefaultBroadcast` = `isDefaultBroadcast`
            self.`liveChatId` = `liveChatId`
            self.`publishedAt` = `publishedAt`
            self.`scheduledEndTime` = `scheduledEndTime`
            self.`scheduledStartTime` = `scheduledStartTime`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `actualEndTime`: String?
        public var `actualStartTime`: String?
        public var `channelId`: String?
        public var `description`: String?
        public var `isDefaultBroadcast`: Bool?
        public var `liveChatId`: String?
        public var `publishedAt`: String?
        public var `scheduledEndTime`: String?
        public var `scheduledStartTime`: String?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class LiveBroadcastStatistics: Codable {
        public init (`totalChatCount`: String?) {
            self.`totalChatCount` = `totalChatCount`
        }
        public var `totalChatCount`: String?
    }

    public class LiveBroadcastStatus: Codable {
        public init (`lifeCycleStatus`: String?, `liveBroadcastPriority`: String?, `madeForKids`: Bool?, `privacyStatus`: String?, `recordingStatus`: String?, `selfDeclaredMadeForKids`: Bool?) {
            self.`lifeCycleStatus` = `lifeCycleStatus`
            self.`liveBroadcastPriority` = `liveBroadcastPriority`
            self.`madeForKids` = `madeForKids`
            self.`privacyStatus` = `privacyStatus`
            self.`recordingStatus` = `recordingStatus`
            self.`selfDeclaredMadeForKids` = `selfDeclaredMadeForKids`
        }
        public var `lifeCycleStatus`: String?
        public var `liveBroadcastPriority`: String?
        public var `madeForKids`: Bool?
        public var `privacyStatus`: String?
        public var `recordingStatus`: String?
        public var `selfDeclaredMadeForKids`: Bool?
    }

    public class LiveChatBan: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: LiveChatBanSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: LiveChatBanSnippet?
    }

    public class LiveChatBanSnippet: Codable {
        public init (`banDurationSeconds`: String?, `bannedUserDetails`: ChannelProfileDetails?, `liveChatId`: String?, `type`: String?) {
            self.`banDurationSeconds` = `banDurationSeconds`
            self.`bannedUserDetails` = `bannedUserDetails`
            self.`liveChatId` = `liveChatId`
            self.`type` = `type`
        }
        public var `banDurationSeconds`: String?
        public var `bannedUserDetails`: ChannelProfileDetails?
        public var `liveChatId`: String?
        public var `type`: String?
    }

    public class LiveChatFanFundingEventDetails: Codable {
        public init (`amountDisplayString`: String?, `amountMicros`: String?, `currency`: String?, `userComment`: String?) {
            self.`amountDisplayString` = `amountDisplayString`
            self.`amountMicros` = `amountMicros`
            self.`currency` = `currency`
            self.`userComment` = `userComment`
        }
        public var `amountDisplayString`: String?
        public var `amountMicros`: String?
        public var `currency`: String?
        public var `userComment`: String?
    }

    public class LiveChatMessage: Codable {
        public init (`authorDetails`: LiveChatMessageAuthorDetails?, `etag`: String?, `id`: String?, `kind`: String?, `snippet`: LiveChatMessageSnippet?) {
            self.`authorDetails` = `authorDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `authorDetails`: LiveChatMessageAuthorDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: LiveChatMessageSnippet?
    }

    public class LiveChatMessageAuthorDetails: Codable {
        public init (`channelId`: String?, `channelUrl`: String?, `displayName`: String?, `isChatModerator`: Bool?, `isChatOwner`: Bool?, `isChatSponsor`: Bool?, `isVerified`: Bool?, `profileImageUrl`: String?) {
            self.`channelId` = `channelId`
            self.`channelUrl` = `channelUrl`
            self.`displayName` = `displayName`
            self.`isChatModerator` = `isChatModerator`
            self.`isChatOwner` = `isChatOwner`
            self.`isChatSponsor` = `isChatSponsor`
            self.`isVerified` = `isVerified`
            self.`profileImageUrl` = `profileImageUrl`
        }
        public var `channelId`: String?
        public var `channelUrl`: String?
        public var `displayName`: String?
        public var `isChatModerator`: Bool?
        public var `isChatOwner`: Bool?
        public var `isChatSponsor`: Bool?
        public var `isVerified`: Bool?
        public var `profileImageUrl`: String?
    }

    public class LiveChatMessageDeletedDetails: Codable {
        public init (`deletedMessageId`: String?) {
            self.`deletedMessageId` = `deletedMessageId`
        }
        public var `deletedMessageId`: String?
    }

    public class LiveChatMessageListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [LiveChatMessage]?, `kind`: String?, `nextPageToken`: String?, `offlineAt`: String?, `pageInfo`: PageInfo?, `pollingIntervalMillis`: Int?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`offlineAt` = `offlineAt`
            self.`pageInfo` = `pageInfo`
            self.`pollingIntervalMillis` = `pollingIntervalMillis`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [LiveChatMessage]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `offlineAt`: String?
        public var `pageInfo`: PageInfo?
        public var `pollingIntervalMillis`: Int?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class LiveChatMessageRetractedDetails: Codable {
        public init (`retractedMessageId`: String?) {
            self.`retractedMessageId` = `retractedMessageId`
        }
        public var `retractedMessageId`: String?
    }

    public class LiveChatMessageSnippet: Codable {
        public init (`authorChannelId`: String?, `displayMessage`: String?, `fanFundingEventDetails`: LiveChatFanFundingEventDetails?, `hasDisplayContent`: Bool?, `liveChatId`: String?, `messageDeletedDetails`: LiveChatMessageDeletedDetails?, `messageRetractedDetails`: LiveChatMessageRetractedDetails?, `publishedAt`: String?, `superChatDetails`: LiveChatSuperChatDetails?, `superStickerDetails`: LiveChatSuperStickerDetails?, `textMessageDetails`: LiveChatTextMessageDetails?, `type`: String?, `userBannedDetails`: LiveChatUserBannedMessageDetails?) {
            self.`authorChannelId` = `authorChannelId`
            self.`displayMessage` = `displayMessage`
            self.`fanFundingEventDetails` = `fanFundingEventDetails`
            self.`hasDisplayContent` = `hasDisplayContent`
            self.`liveChatId` = `liveChatId`
            self.`messageDeletedDetails` = `messageDeletedDetails`
            self.`messageRetractedDetails` = `messageRetractedDetails`
            self.`publishedAt` = `publishedAt`
            self.`superChatDetails` = `superChatDetails`
            self.`superStickerDetails` = `superStickerDetails`
            self.`textMessageDetails` = `textMessageDetails`
            self.`type` = `type`
            self.`userBannedDetails` = `userBannedDetails`
        }
        public var `authorChannelId`: String?
        public var `displayMessage`: String?
        public var `fanFundingEventDetails`: LiveChatFanFundingEventDetails?
        public var `hasDisplayContent`: Bool?
        public var `liveChatId`: String?
        public var `messageDeletedDetails`: LiveChatMessageDeletedDetails?
        public var `messageRetractedDetails`: LiveChatMessageRetractedDetails?
        public var `publishedAt`: String?
        public var `superChatDetails`: LiveChatSuperChatDetails?
        public var `superStickerDetails`: LiveChatSuperStickerDetails?
        public var `textMessageDetails`: LiveChatTextMessageDetails?
        public var `type`: String?
        public var `userBannedDetails`: LiveChatUserBannedMessageDetails?
    }

    public class LiveChatModerator: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: LiveChatModeratorSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: LiveChatModeratorSnippet?
    }

    public class LiveChatModeratorListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [LiveChatModerator]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [LiveChatModerator]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class LiveChatModeratorSnippet: Codable {
        public init (`liveChatId`: String?, `moderatorDetails`: ChannelProfileDetails?) {
            self.`liveChatId` = `liveChatId`
            self.`moderatorDetails` = `moderatorDetails`
        }
        public var `liveChatId`: String?
        public var `moderatorDetails`: ChannelProfileDetails?
    }

    public class LiveChatSuperChatDetails: Codable {
        public init (`amountDisplayString`: String?, `amountMicros`: String?, `currency`: String?, `tier`: Int?, `userComment`: String?) {
            self.`amountDisplayString` = `amountDisplayString`
            self.`amountMicros` = `amountMicros`
            self.`currency` = `currency`
            self.`tier` = `tier`
            self.`userComment` = `userComment`
        }
        public var `amountDisplayString`: String?
        public var `amountMicros`: String?
        public var `currency`: String?
        public var `tier`: Int?
        public var `userComment`: String?
    }

    public class LiveChatSuperStickerDetails: Codable {
        public init (`amountDisplayString`: String?, `amountMicros`: String?, `currency`: String?, `superStickerMetadata`: SuperStickerMetadata?, `tier`: Int?) {
            self.`amountDisplayString` = `amountDisplayString`
            self.`amountMicros` = `amountMicros`
            self.`currency` = `currency`
            self.`superStickerMetadata` = `superStickerMetadata`
            self.`tier` = `tier`
        }
        public var `amountDisplayString`: String?
        public var `amountMicros`: String?
        public var `currency`: String?
        public var `superStickerMetadata`: SuperStickerMetadata?
        public var `tier`: Int?
    }

    public class LiveChatTextMessageDetails: Codable {
        public init (`messageText`: String?) {
            self.`messageText` = `messageText`
        }
        public var `messageText`: String?
    }

    public class LiveChatUserBannedMessageDetails: Codable {
        public init (`banDurationSeconds`: String?, `banType`: String?, `bannedUserDetails`: ChannelProfileDetails?) {
            self.`banDurationSeconds` = `banDurationSeconds`
            self.`banType` = `banType`
            self.`bannedUserDetails` = `bannedUserDetails`
        }
        public var `banDurationSeconds`: String?
        public var `banType`: String?
        public var `bannedUserDetails`: ChannelProfileDetails?
    }

    public class LiveStream: Codable {
        public init (`cdn`: CdnSettings?, `contentDetails`: LiveStreamContentDetails?, `etag`: String?, `id`: String?, `kind`: String?, `snippet`: LiveStreamSnippet?, `status`: LiveStreamStatus?) {
            self.`cdn` = `cdn`
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
            self.`status` = `status`
        }
        public var `cdn`: CdnSettings?
        public var `contentDetails`: LiveStreamContentDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: LiveStreamSnippet?
        public var `status`: LiveStreamStatus?
    }

    public class LiveStreamConfigurationIssue: Codable {
        public init (`description`: String?, `reason`: String?, `severity`: String?, `type`: String?) {
            self.`description` = `description`
            self.`reason` = `reason`
            self.`severity` = `severity`
            self.`type` = `type`
        }
        public var `description`: String?
        public var `reason`: String?
        public var `severity`: String?
        public var `type`: String?
    }

    public class LiveStreamContentDetails: Codable {
        public init (`closedCaptionsIngestionUrl`: String?, `isReusable`: Bool?) {
            self.`closedCaptionsIngestionUrl` = `closedCaptionsIngestionUrl`
            self.`isReusable` = `isReusable`
        }
        public var `closedCaptionsIngestionUrl`: String?
        public var `isReusable`: Bool?
    }

    public class LiveStreamHealthStatus: Codable {
        public init (`configurationIssues`: [LiveStreamConfigurationIssue]?, `lastUpdateTimeSeconds`: String?, `status`: String?) {
            self.`configurationIssues` = `configurationIssues`
            self.`lastUpdateTimeSeconds` = `lastUpdateTimeSeconds`
            self.`status` = `status`
        }
        public var `configurationIssues`: [LiveStreamConfigurationIssue]?
        public var `lastUpdateTimeSeconds`: String?
        public var `status`: String?
    }

    public class LiveStreamListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [LiveStream]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [LiveStream]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class LiveStreamSnippet: Codable {
        public init (`channelId`: String?, `description`: String?, `isDefaultStream`: Bool?, `publishedAt`: String?, `title`: String?) {
            self.`channelId` = `channelId`
            self.`description` = `description`
            self.`isDefaultStream` = `isDefaultStream`
            self.`publishedAt` = `publishedAt`
            self.`title` = `title`
        }
        public var `channelId`: String?
        public var `description`: String?
        public var `isDefaultStream`: Bool?
        public var `publishedAt`: String?
        public var `title`: String?
    }

    public class LiveStreamStatus: Codable {
        public init (`healthStatus`: LiveStreamHealthStatus?, `streamStatus`: String?) {
            self.`healthStatus` = `healthStatus`
            self.`streamStatus` = `streamStatus`
        }
        public var `healthStatus`: LiveStreamHealthStatus?
        public var `streamStatus`: String?
    }

    public class LocalizedProperty: Codable {
        public init (`default`: String?, `defaultLanguage`: LanguageTag?, `localized`: [LocalizedString]?) {
            self.`default` = `default`
            self.`defaultLanguage` = `defaultLanguage`
            self.`localized` = `localized`
        }
        public var `default`: String?
        public var `defaultLanguage`: LanguageTag?
        public var `localized`: [LocalizedString]?
    }

    public class LocalizedString: Codable {
        public init (`language`: String?, `value`: String?) {
            self.`language` = `language`
            self.`value` = `value`
        }
        public var `language`: String?
        public var `value`: String?
    }

    public class Member: Codable {
        public init (`etag`: String?, `kind`: String?, `snippet`: MemberSnippet?) {
            self.`etag` = `etag`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `kind`: String?
        public var `snippet`: MemberSnippet?
    }

    public class MemberListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Member]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Member]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class MemberSnippet: Codable {
        public init (`creatorChannelId`: String?, `memberDetails`: ChannelProfileDetails?, `membershipsDetails`: MembershipsDetails?) {
            self.`creatorChannelId` = `creatorChannelId`
            self.`memberDetails` = `memberDetails`
            self.`membershipsDetails` = `membershipsDetails`
        }
        public var `creatorChannelId`: String?
        public var `memberDetails`: ChannelProfileDetails?
        public var `membershipsDetails`: MembershipsDetails?
    }

    public class MembershipsDetails: Codable {
        public init (`accessibleLevels`: [String]?, `highestAccessibleLevel`: String?, `highestAccessibleLevelDisplayName`: String?, `membershipsDuration`: MembershipsDuration?, `membershipsDurationAtLevels`: [MembershipsDurationAtLevel]?) {
            self.`accessibleLevels` = `accessibleLevels`
            self.`highestAccessibleLevel` = `highestAccessibleLevel`
            self.`highestAccessibleLevelDisplayName` = `highestAccessibleLevelDisplayName`
            self.`membershipsDuration` = `membershipsDuration`
            self.`membershipsDurationAtLevels` = `membershipsDurationAtLevels`
        }
        public var `accessibleLevels`: [String]?
        public var `highestAccessibleLevel`: String?
        public var `highestAccessibleLevelDisplayName`: String?
        public var `membershipsDuration`: MembershipsDuration?
        public var `membershipsDurationAtLevels`: [MembershipsDurationAtLevel]?
    }

    public class MembershipsDuration: Codable {
        public init (`memberSince`: String?, `memberTotalDurationMonths`: Int?) {
            self.`memberSince` = `memberSince`
            self.`memberTotalDurationMonths` = `memberTotalDurationMonths`
        }
        public var `memberSince`: String?
        public var `memberTotalDurationMonths`: Int?
    }

    public class MembershipsDurationAtLevel: Codable {
        public init (`level`: String?, `memberSince`: String?, `memberTotalDurationMonths`: Int?) {
            self.`level` = `level`
            self.`memberSince` = `memberSince`
            self.`memberTotalDurationMonths` = `memberTotalDurationMonths`
        }
        public var `level`: String?
        public var `memberSince`: String?
        public var `memberTotalDurationMonths`: Int?
    }

    public class MembershipsLevel: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: MembershipsLevelSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: MembershipsLevelSnippet?
    }

    public class MembershipsLevelListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [MembershipsLevel]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [MembershipsLevel]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class MembershipsLevelSnippet: Codable {
        public init (`creatorChannelId`: String?, `levelDetails`: LevelDetails?) {
            self.`creatorChannelId` = `creatorChannelId`
            self.`levelDetails` = `levelDetails`
        }
        public var `creatorChannelId`: String?
        public var `levelDetails`: LevelDetails?
    }

    public class MerchandiseElement: Codable {
        public init () {
        }
    }

    public class MonitorStreamInfo: Codable {
        public init (`broadcastStreamDelayMs`: Int?, `embedHtml`: String?, `enableMonitorStream`: Bool?) {
            self.`broadcastStreamDelayMs` = `broadcastStreamDelayMs`
            self.`embedHtml` = `embedHtml`
            self.`enableMonitorStream` = `enableMonitorStream`
        }
        public var `broadcastStreamDelayMs`: Int?
        public var `embedHtml`: String?
        public var `enableMonitorStream`: Bool?
    }

    public class PageInfo: Codable {
        public init (`resultsPerPage`: Int?, `totalResults`: Int?) {
            self.`resultsPerPage` = `resultsPerPage`
            self.`totalResults` = `totalResults`
        }
        public var `resultsPerPage`: Int?
        public var `totalResults`: Int?
    }

    public typealias Playlist_localizations = [String: PlaylistLocalization]

    public class Playlist: Codable {
        public init (`contentDetails`: PlaylistContentDetails?, `etag`: String?, `id`: String?, `kind`: String?, `localizations`: Playlist_localizations?, `player`: PlaylistPlayer?, `snippet`: PlaylistSnippet?, `status`: PlaylistStatus?) {
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`localizations` = `localizations`
            self.`player` = `player`
            self.`snippet` = `snippet`
            self.`status` = `status`
        }
        public var `contentDetails`: PlaylistContentDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `localizations`: Playlist_localizations?
        public var `player`: PlaylistPlayer?
        public var `snippet`: PlaylistSnippet?
        public var `status`: PlaylistStatus?
    }

    public class PlaylistCard: Codable {
        public init (`customMessage`: String?, `playlistId`: String?, `startVideoId`: String?) {
            self.`customMessage` = `customMessage`
            self.`playlistId` = `playlistId`
            self.`startVideoId` = `startVideoId`
        }
        public var `customMessage`: String?
        public var `playlistId`: String?
        public var `startVideoId`: String?
    }

    public class PlaylistContentDetails: Codable {
        public init (`itemCount`: Int?) {
            self.`itemCount` = `itemCount`
        }
        public var `itemCount`: Int?
    }

    public class PlaylistElement: Codable {
        public init (`playlistId`: String?) {
            self.`playlistId` = `playlistId`
        }
        public var `playlistId`: String?
    }

    public class PlaylistItem: Codable {
        public init (`contentDetails`: PlaylistItemContentDetails?, `etag`: String?, `id`: String?, `kind`: String?, `snippet`: PlaylistItemSnippet?, `status`: PlaylistItemStatus?) {
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
            self.`status` = `status`
        }
        public var `contentDetails`: PlaylistItemContentDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: PlaylistItemSnippet?
        public var `status`: PlaylistItemStatus?
    }

    public class PlaylistItemContentDetails: Codable {
        public init (`endAt`: String?, `note`: String?, `startAt`: String?, `videoId`: String?, `videoPublishedAt`: String?) {
            self.`endAt` = `endAt`
            self.`note` = `note`
            self.`startAt` = `startAt`
            self.`videoId` = `videoId`
            self.`videoPublishedAt` = `videoPublishedAt`
        }
        public var `endAt`: String?
        public var `note`: String?
        public var `startAt`: String?
        public var `videoId`: String?
        public var `videoPublishedAt`: String?
    }

    public class PlaylistItemListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [PlaylistItem]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [PlaylistItem]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class PlaylistItemSnippet: Codable {
        public init (`channelId`: String?, `channelTitle`: String?, `description`: String?, `playlistId`: String?, `position`: Int?, `publishedAt`: String?, `resourceId`: ResourceId?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`channelId` = `channelId`
            self.`channelTitle` = `channelTitle`
            self.`description` = `description`
            self.`playlistId` = `playlistId`
            self.`position` = `position`
            self.`publishedAt` = `publishedAt`
            self.`resourceId` = `resourceId`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `channelId`: String?
        public var `channelTitle`: String?
        public var `description`: String?
        public var `playlistId`: String?
        public var `position`: Int?
        public var `publishedAt`: String?
        public var `resourceId`: ResourceId?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class PlaylistItemStatus: Codable {
        public init (`privacyStatus`: String?) {
            self.`privacyStatus` = `privacyStatus`
        }
        public var `privacyStatus`: String?
    }

    public class PlaylistListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Playlist]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Playlist]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class PlaylistLocalization: Codable {
        public init (`description`: String?, `title`: String?) {
            self.`description` = `description`
            self.`title` = `title`
        }
        public var `description`: String?
        public var `title`: String?
    }

    public class PlaylistPlayer: Codable {
        public init (`embedHtml`: String?) {
            self.`embedHtml` = `embedHtml`
        }
        public var `embedHtml`: String?
    }

    public class PlaylistSnippet: Codable {
        public init (`channelId`: String?, `channelTitle`: String?, `defaultLanguage`: String?, `description`: String?, `localized`: PlaylistLocalization?, `publishedAt`: String?, `tags`: [String]?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`channelId` = `channelId`
            self.`channelTitle` = `channelTitle`
            self.`defaultLanguage` = `defaultLanguage`
            self.`description` = `description`
            self.`localized` = `localized`
            self.`publishedAt` = `publishedAt`
            self.`tags` = `tags`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `channelId`: String?
        public var `channelTitle`: String?
        public var `defaultLanguage`: String?
        public var `description`: String?
        public var `localized`: PlaylistLocalization?
        public var `publishedAt`: String?
        public var `tags`: [String]?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class PlaylistStatus: Codable {
        public init (`privacyStatus`: String?) {
            self.`privacyStatus` = `privacyStatus`
        }
        public var `privacyStatus`: String?
    }

    public class PromotedItem: Codable {
        public init (`customMessage`: String?, `id`: PromotedItemId?, `promotedByContentOwner`: Bool?, `timing`: InvideoTiming?) {
            self.`customMessage` = `customMessage`
            self.`id` = `id`
            self.`promotedByContentOwner` = `promotedByContentOwner`
            self.`timing` = `timing`
        }
        public var `customMessage`: String?
        public var `id`: PromotedItemId?
        public var `promotedByContentOwner`: Bool?
        public var `timing`: InvideoTiming?
    }

    public class PromotedItemId: Codable {
        public init (`recentlyUploadedBy`: String?, `type`: String?, `videoId`: String?, `websiteUrl`: String?) {
            self.`recentlyUploadedBy` = `recentlyUploadedBy`
            self.`type` = `type`
            self.`videoId` = `videoId`
            self.`websiteUrl` = `websiteUrl`
        }
        public var `recentlyUploadedBy`: String?
        public var `type`: String?
        public var `videoId`: String?
        public var `websiteUrl`: String?
    }

    public class PropertyValue: Codable {
        public init (`property`: String?, `value`: String?) {
            self.`property` = `property`
            self.`value` = `value`
        }
        public var `property`: String?
        public var `value`: String?
    }

    public class RelatedEntity: Codable {
        public init (`entity`: Entity?) {
            self.`entity` = `entity`
        }
        public var `entity`: Entity?
    }

    public class ResourceId: Codable {
        public init (`channelId`: String?, `kind`: String?, `playlistId`: String?, `videoId`: String?) {
            self.`channelId` = `channelId`
            self.`kind` = `kind`
            self.`playlistId` = `playlistId`
            self.`videoId` = `videoId`
        }
        public var `channelId`: String?
        public var `kind`: String?
        public var `playlistId`: String?
        public var `videoId`: String?
    }

    public class SearchListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [SearchResult]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `regionCode`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`regionCode` = `regionCode`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [SearchResult]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `regionCode`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class SearchResult: Codable {
        public init (`etag`: String?, `id`: ResourceId?, `kind`: String?, `snippet`: SearchResultSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: ResourceId?
        public var `kind`: String?
        public var `snippet`: SearchResultSnippet?
    }

    public class SearchResultSnippet: Codable {
        public init (`channelId`: String?, `channelTitle`: String?, `description`: String?, `liveBroadcastContent`: String?, `publishedAt`: String?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`channelId` = `channelId`
            self.`channelTitle` = `channelTitle`
            self.`description` = `description`
            self.`liveBroadcastContent` = `liveBroadcastContent`
            self.`publishedAt` = `publishedAt`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `channelId`: String?
        public var `channelTitle`: String?
        public var `description`: String?
        public var `liveBroadcastContent`: String?
        public var `publishedAt`: String?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class Sponsor: Codable {
        public init (`etag`: String?, `kind`: String?, `snippet`: SponsorSnippet?) {
            self.`etag` = `etag`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `kind`: String?
        public var `snippet`: SponsorSnippet?
    }

    public class SponsorListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Sponsor]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Sponsor]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class SponsorSnippet: Codable {
        public init (`channelId`: String?, `cumulativeDurationMonths`: Int?, `sponsorDetails`: ChannelProfileDetails?, `sponsorSince`: String?) {
            self.`channelId` = `channelId`
            self.`cumulativeDurationMonths` = `cumulativeDurationMonths`
            self.`sponsorDetails` = `sponsorDetails`
            self.`sponsorSince` = `sponsorSince`
        }
        public var `channelId`: String?
        public var `cumulativeDurationMonths`: Int?
        public var `sponsorDetails`: ChannelProfileDetails?
        public var `sponsorSince`: String?
    }

    public class SubscribeElement: Codable {
        public init () {
        }
    }

    public class Subscription: Codable {
        public init (`contentDetails`: SubscriptionContentDetails?, `etag`: String?, `id`: String?, `kind`: String?, `snippet`: SubscriptionSnippet?, `subscriberSnippet`: SubscriptionSubscriberSnippet?) {
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
            self.`subscriberSnippet` = `subscriberSnippet`
        }
        public var `contentDetails`: SubscriptionContentDetails?
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: SubscriptionSnippet?
        public var `subscriberSnippet`: SubscriptionSubscriberSnippet?
    }

    public class SubscriptionContentDetails: Codable {
        public init (`activityType`: String?, `newItemCount`: Int?, `totalItemCount`: Int?) {
            self.`activityType` = `activityType`
            self.`newItemCount` = `newItemCount`
            self.`totalItemCount` = `totalItemCount`
        }
        public var `activityType`: String?
        public var `newItemCount`: Int?
        public var `totalItemCount`: Int?
    }

    public class SubscriptionListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Subscription]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Subscription]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class SubscriptionSnippet: Codable {
        public init (`channelId`: String?, `channelTitle`: String?, `description`: String?, `publishedAt`: String?, `resourceId`: ResourceId?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`channelId` = `channelId`
            self.`channelTitle` = `channelTitle`
            self.`description` = `description`
            self.`publishedAt` = `publishedAt`
            self.`resourceId` = `resourceId`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `channelId`: String?
        public var `channelTitle`: String?
        public var `description`: String?
        public var `publishedAt`: String?
        public var `resourceId`: ResourceId?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class SubscriptionSubscriberSnippet: Codable {
        public init (`channelId`: String?, `description`: String?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`channelId` = `channelId`
            self.`description` = `description`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `channelId`: String?
        public var `description`: String?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class SuperChatEvent: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: SuperChatEventSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: SuperChatEventSnippet?
    }

    public class SuperChatEventListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [SuperChatEvent]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [SuperChatEvent]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class SuperChatEventSnippet: Codable {
        public init (`amountMicros`: String?, `channelId`: String?, `commentText`: String?, `createdAt`: String?, `currency`: String?, `displayString`: String?, `isSuperStickerEvent`: Bool?, `messageType`: Int?, `superStickerMetadata`: SuperStickerMetadata?, `supporterDetails`: ChannelProfileDetails?) {
            self.`amountMicros` = `amountMicros`
            self.`channelId` = `channelId`
            self.`commentText` = `commentText`
            self.`createdAt` = `createdAt`
            self.`currency` = `currency`
            self.`displayString` = `displayString`
            self.`isSuperStickerEvent` = `isSuperStickerEvent`
            self.`messageType` = `messageType`
            self.`superStickerMetadata` = `superStickerMetadata`
            self.`supporterDetails` = `supporterDetails`
        }
        public var `amountMicros`: String?
        public var `channelId`: String?
        public var `commentText`: String?
        public var `createdAt`: String?
        public var `currency`: String?
        public var `displayString`: String?
        public var `isSuperStickerEvent`: Bool?
        public var `messageType`: Int?
        public var `superStickerMetadata`: SuperStickerMetadata?
        public var `supporterDetails`: ChannelProfileDetails?
    }

    public class SuperStickerMetadata: Codable {
        public init (`altText`: String?, `altTextLanguage`: String?, `stickerId`: String?) {
            self.`altText` = `altText`
            self.`altTextLanguage` = `altTextLanguage`
            self.`stickerId` = `stickerId`
        }
        public var `altText`: String?
        public var `altTextLanguage`: String?
        public var `stickerId`: String?
    }

    public class TestItem: Codable {
        public init (`gaia`: String?, `id`: String?, `snippet`: TestItemTestItemSnippet?) {
            self.`gaia` = `gaia`
            self.`id` = `id`
            self.`snippet` = `snippet`
        }
        public var `gaia`: String?
        public var `id`: String?
        public var `snippet`: TestItemTestItemSnippet?
    }

    public class TestItemTestItemSnippet: Codable {
        public init () {
        }
    }

    public class ThirdPartyLink: Codable {
        public init (`etag`: String?, `kind`: String?, `linkingToken`: String?, `snippet`: ThirdPartyLinkSnippet?, `status`: ThirdPartyLinkStatus?) {
            self.`etag` = `etag`
            self.`kind` = `kind`
            self.`linkingToken` = `linkingToken`
            self.`snippet` = `snippet`
            self.`status` = `status`
        }
        public var `etag`: String?
        public var `kind`: String?
        public var `linkingToken`: String?
        public var `snippet`: ThirdPartyLinkSnippet?
        public var `status`: ThirdPartyLinkStatus?
    }

    public class ThirdPartyLinkSnippet: Codable {
        public init (`channelToStoreLink`: ChannelToStoreLinkDetails?, `type`: String?) {
            self.`channelToStoreLink` = `channelToStoreLink`
            self.`type` = `type`
        }
        public var `channelToStoreLink`: ChannelToStoreLinkDetails?
        public var `type`: String?
    }

    public class ThirdPartyLinkStatus: Codable {
        public init (`linkStatus`: String?) {
            self.`linkStatus` = `linkStatus`
        }
        public var `linkStatus`: String?
    }

    public class Thumbnail: Codable {
        public init (`height`: Int?, `url`: String?, `width`: Int?) {
            self.`height` = `height`
            self.`url` = `url`
            self.`width` = `width`
        }
        public var `height`: Int?
        public var `url`: String?
        public var `width`: Int?
    }

    public class ThumbnailDetails: Codable {
        public init (`default`: Thumbnail?, `high`: Thumbnail?, `maxres`: Thumbnail?, `medium`: Thumbnail?, `standard`: Thumbnail?) {
            self.`default` = `default`
            self.`high` = `high`
            self.`maxres` = `maxres`
            self.`medium` = `medium`
            self.`standard` = `standard`
        }
        public var `default`: Thumbnail?
        public var `high`: Thumbnail?
        public var `maxres`: Thumbnail?
        public var `medium`: Thumbnail?
        public var `standard`: Thumbnail?
    }

    public class ThumbnailSetResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [ThumbnailDetails]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [ThumbnailDetails]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class TokenPagination: Codable {
        public init () {
        }
    }

    public typealias Video_localizations = [String: VideoLocalization]

    public class Video: Codable {
        public init (`ageGating`: VideoAgeGating?, `contentDetails`: VideoContentDetails?, `etag`: String?, `fileDetails`: VideoFileDetails?, `id`: String?, `kind`: String?, `liveStreamingDetails`: VideoLiveStreamingDetails?, `localizations`: Video_localizations?, `monetizationDetails`: VideoMonetizationDetails?, `player`: VideoPlayer?, `processingDetails`: VideoProcessingDetails?, `projectDetails`: VideoProjectDetails?, `recordingDetails`: VideoRecordingDetails?, `snippet`: VideoSnippet?, `statistics`: VideoStatistics?, `status`: VideoStatus?, `suggestions`: VideoSuggestions?, `topicDetails`: VideoTopicDetails?) {
            self.`ageGating` = `ageGating`
            self.`contentDetails` = `contentDetails`
            self.`etag` = `etag`
            self.`fileDetails` = `fileDetails`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`liveStreamingDetails` = `liveStreamingDetails`
            self.`localizations` = `localizations`
            self.`monetizationDetails` = `monetizationDetails`
            self.`player` = `player`
            self.`processingDetails` = `processingDetails`
            self.`projectDetails` = `projectDetails`
            self.`recordingDetails` = `recordingDetails`
            self.`snippet` = `snippet`
            self.`statistics` = `statistics`
            self.`status` = `status`
            self.`suggestions` = `suggestions`
            self.`topicDetails` = `topicDetails`
        }
        public var `ageGating`: VideoAgeGating?
        public var `contentDetails`: VideoContentDetails?
        public var `etag`: String?
        public var `fileDetails`: VideoFileDetails?
        public var `id`: String?
        public var `kind`: String?
        public var `liveStreamingDetails`: VideoLiveStreamingDetails?
        public var `localizations`: Video_localizations?
        public var `monetizationDetails`: VideoMonetizationDetails?
        public var `player`: VideoPlayer?
        public var `processingDetails`: VideoProcessingDetails?
        public var `projectDetails`: VideoProjectDetails?
        public var `recordingDetails`: VideoRecordingDetails?
        public var `snippet`: VideoSnippet?
        public var `statistics`: VideoStatistics?
        public var `status`: VideoStatus?
        public var `suggestions`: VideoSuggestions?
        public var `topicDetails`: VideoTopicDetails?
    }

    public class VideoAbuseReport: Codable {
        public init (`comments`: String?, `language`: String?, `reasonId`: String?, `secondaryReasonId`: String?, `videoId`: String?) {
            self.`comments` = `comments`
            self.`language` = `language`
            self.`reasonId` = `reasonId`
            self.`secondaryReasonId` = `secondaryReasonId`
            self.`videoId` = `videoId`
        }
        public var `comments`: String?
        public var `language`: String?
        public var `reasonId`: String?
        public var `secondaryReasonId`: String?
        public var `videoId`: String?
    }

    public class VideoAbuseReportReason: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: VideoAbuseReportReasonSnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: VideoAbuseReportReasonSnippet?
    }

    public class VideoAbuseReportReasonListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [VideoAbuseReportReason]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [VideoAbuseReportReason]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class VideoAbuseReportReasonSnippet: Codable {
        public init (`label`: String?, `secondaryReasons`: [VideoAbuseReportSecondaryReason]?) {
            self.`label` = `label`
            self.`secondaryReasons` = `secondaryReasons`
        }
        public var `label`: String?
        public var `secondaryReasons`: [VideoAbuseReportSecondaryReason]?
    }

    public class VideoAbuseReportSecondaryReason: Codable {
        public init (`id`: String?, `label`: String?) {
            self.`id` = `id`
            self.`label` = `label`
        }
        public var `id`: String?
        public var `label`: String?
    }

    public class VideoAgeGating: Codable {
        public init (`alcoholContent`: Bool?, `restricted`: Bool?, `videoGameRating`: String?) {
            self.`alcoholContent` = `alcoholContent`
            self.`restricted` = `restricted`
            self.`videoGameRating` = `videoGameRating`
        }
        public var `alcoholContent`: Bool?
        public var `restricted`: Bool?
        public var `videoGameRating`: String?
    }

    public class VideoCard: Codable {
        public init (`customMessage`: String?, `playbackStartOffset`: String?, `videoId`: String?) {
            self.`customMessage` = `customMessage`
            self.`playbackStartOffset` = `playbackStartOffset`
            self.`videoId` = `videoId`
        }
        public var `customMessage`: String?
        public var `playbackStartOffset`: String?
        public var `videoId`: String?
    }

    public class VideoCategory: Codable {
        public init (`etag`: String?, `id`: String?, `kind`: String?, `snippet`: VideoCategorySnippet?) {
            self.`etag` = `etag`
            self.`id` = `id`
            self.`kind` = `kind`
            self.`snippet` = `snippet`
        }
        public var `etag`: String?
        public var `id`: String?
        public var `kind`: String?
        public var `snippet`: VideoCategorySnippet?
    }

    public class VideoCategoryListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [VideoCategory]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [VideoCategory]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class VideoCategorySnippet: Codable {
        public init (`assignable`: Bool?, `channelId`: String?, `title`: String?) {
            self.`assignable` = `assignable`
            self.`channelId` = `channelId`
            self.`title` = `title`
        }
        public var `assignable`: Bool?
        public var `channelId`: String?
        public var `title`: String?
    }

    public class VideoContentDetails: Codable {
        public init (`caption`: String?, `contentRating`: ContentRating?, `countryRestriction`: AccessPolicy?, `definition`: String?, `dimension`: String?, `duration`: String?, `hasCustomThumbnail`: Bool?, `licensedContent`: Bool?, `projection`: String?, `regionRestriction`: VideoContentDetailsRegionRestriction?) {
            self.`caption` = `caption`
            self.`contentRating` = `contentRating`
            self.`countryRestriction` = `countryRestriction`
            self.`definition` = `definition`
            self.`dimension` = `dimension`
            self.`duration` = `duration`
            self.`hasCustomThumbnail` = `hasCustomThumbnail`
            self.`licensedContent` = `licensedContent`
            self.`projection` = `projection`
            self.`regionRestriction` = `regionRestriction`
        }
        public var `caption`: String?
        public var `contentRating`: ContentRating?
        public var `countryRestriction`: AccessPolicy?
        public var `definition`: String?
        public var `dimension`: String?
        public var `duration`: String?
        public var `hasCustomThumbnail`: Bool?
        public var `licensedContent`: Bool?
        public var `projection`: String?
        public var `regionRestriction`: VideoContentDetailsRegionRestriction?
    }

    public class VideoContentDetailsRegionRestriction: Codable {
        public init (`allowed`: [String]?, `blocked`: [String]?) {
            self.`allowed` = `allowed`
            self.`blocked` = `blocked`
        }
        public var `allowed`: [String]?
        public var `blocked`: [String]?
    }

    public class VideoElement: Codable {
        public init (`playbackStartOffset`: String?, `videoId`: String?, `videoType`: String?) {
            self.`playbackStartOffset` = `playbackStartOffset`
            self.`videoId` = `videoId`
            self.`videoType` = `videoType`
        }
        public var `playbackStartOffset`: String?
        public var `videoId`: String?
        public var `videoType`: String?
    }

    public class VideoFileDetails: Codable {
        public init (`audioStreams`: [VideoFileDetailsAudioStream]?, `bitrateBps`: String?, `container`: String?, `creationTime`: String?, `durationMs`: String?, `fileName`: String?, `fileSize`: String?, `fileType`: String?, `videoStreams`: [VideoFileDetailsVideoStream]?) {
            self.`audioStreams` = `audioStreams`
            self.`bitrateBps` = `bitrateBps`
            self.`container` = `container`
            self.`creationTime` = `creationTime`
            self.`durationMs` = `durationMs`
            self.`fileName` = `fileName`
            self.`fileSize` = `fileSize`
            self.`fileType` = `fileType`
            self.`videoStreams` = `videoStreams`
        }
        public var `audioStreams`: [VideoFileDetailsAudioStream]?
        public var `bitrateBps`: String?
        public var `container`: String?
        public var `creationTime`: String?
        public var `durationMs`: String?
        public var `fileName`: String?
        public var `fileSize`: String?
        public var `fileType`: String?
        public var `videoStreams`: [VideoFileDetailsVideoStream]?
    }

    public class VideoFileDetailsAudioStream: Codable {
        public init (`bitrateBps`: String?, `channelCount`: Int?, `codec`: String?, `vendor`: String?) {
            self.`bitrateBps` = `bitrateBps`
            self.`channelCount` = `channelCount`
            self.`codec` = `codec`
            self.`vendor` = `vendor`
        }
        public var `bitrateBps`: String?
        public var `channelCount`: Int?
        public var `codec`: String?
        public var `vendor`: String?
    }

    public class VideoFileDetailsVideoStream: Codable {
        public init (`aspectRatio`: Double?, `bitrateBps`: String?, `codec`: String?, `frameRateFps`: Double?, `heightPixels`: Int?, `rotation`: String?, `vendor`: String?, `widthPixels`: Int?) {
            self.`aspectRatio` = `aspectRatio`
            self.`bitrateBps` = `bitrateBps`
            self.`codec` = `codec`
            self.`frameRateFps` = `frameRateFps`
            self.`heightPixels` = `heightPixels`
            self.`rotation` = `rotation`
            self.`vendor` = `vendor`
            self.`widthPixels` = `widthPixels`
        }
        public var `aspectRatio`: Double?
        public var `bitrateBps`: String?
        public var `codec`: String?
        public var `frameRateFps`: Double?
        public var `heightPixels`: Int?
        public var `rotation`: String?
        public var `vendor`: String?
        public var `widthPixels`: Int?
    }

    public class VideoListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [Video]?, `kind`: String?, `nextPageToken`: String?, `pageInfo`: PageInfo?, `prevPageToken`: String?, `tokenPagination`: TokenPagination?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`nextPageToken` = `nextPageToken`
            self.`pageInfo` = `pageInfo`
            self.`prevPageToken` = `prevPageToken`
            self.`tokenPagination` = `tokenPagination`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [Video]?
        public var `kind`: String?
        public var `nextPageToken`: String?
        public var `pageInfo`: PageInfo?
        public var `prevPageToken`: String?
        public var `tokenPagination`: TokenPagination?
        public var `visitorId`: String?
    }

    public class VideoLiveStreamingDetails: Codable {
        public init (`activeLiveChatId`: String?, `actualEndTime`: String?, `actualStartTime`: String?, `concurrentViewers`: String?, `scheduledEndTime`: String?, `scheduledStartTime`: String?) {
            self.`activeLiveChatId` = `activeLiveChatId`
            self.`actualEndTime` = `actualEndTime`
            self.`actualStartTime` = `actualStartTime`
            self.`concurrentViewers` = `concurrentViewers`
            self.`scheduledEndTime` = `scheduledEndTime`
            self.`scheduledStartTime` = `scheduledStartTime`
        }
        public var `activeLiveChatId`: String?
        public var `actualEndTime`: String?
        public var `actualStartTime`: String?
        public var `concurrentViewers`: String?
        public var `scheduledEndTime`: String?
        public var `scheduledStartTime`: String?
    }

    public class VideoLocalization: Codable {
        public init (`description`: String?, `title`: String?) {
            self.`description` = `description`
            self.`title` = `title`
        }
        public var `description`: String?
        public var `title`: String?
    }

    public class VideoMonetizationDetails: Codable {
        public init (`access`: AccessPolicy?) {
            self.`access` = `access`
        }
        public var `access`: AccessPolicy?
    }

    public class VideoPlayer: Codable {
        public init (`embedHeight`: String?, `embedHtml`: String?, `embedWidth`: String?) {
            self.`embedHeight` = `embedHeight`
            self.`embedHtml` = `embedHtml`
            self.`embedWidth` = `embedWidth`
        }
        public var `embedHeight`: String?
        public var `embedHtml`: String?
        public var `embedWidth`: String?
    }

    public class VideoProcessingDetails: Codable {
        public init (`editorSuggestionsAvailability`: String?, `fileDetailsAvailability`: String?, `processingFailureReason`: String?, `processingIssuesAvailability`: String?, `processingProgress`: VideoProcessingDetailsProcessingProgress?, `processingStatus`: String?, `tagSuggestionsAvailability`: String?, `thumbnailsAvailability`: String?) {
            self.`editorSuggestionsAvailability` = `editorSuggestionsAvailability`
            self.`fileDetailsAvailability` = `fileDetailsAvailability`
            self.`processingFailureReason` = `processingFailureReason`
            self.`processingIssuesAvailability` = `processingIssuesAvailability`
            self.`processingProgress` = `processingProgress`
            self.`processingStatus` = `processingStatus`
            self.`tagSuggestionsAvailability` = `tagSuggestionsAvailability`
            self.`thumbnailsAvailability` = `thumbnailsAvailability`
        }
        public var `editorSuggestionsAvailability`: String?
        public var `fileDetailsAvailability`: String?
        public var `processingFailureReason`: String?
        public var `processingIssuesAvailability`: String?
        public var `processingProgress`: VideoProcessingDetailsProcessingProgress?
        public var `processingStatus`: String?
        public var `tagSuggestionsAvailability`: String?
        public var `thumbnailsAvailability`: String?
    }

    public class VideoProcessingDetailsProcessingProgress: Codable {
        public init (`partsProcessed`: String?, `partsTotal`: String?, `timeLeftMs`: String?) {
            self.`partsProcessed` = `partsProcessed`
            self.`partsTotal` = `partsTotal`
            self.`timeLeftMs` = `timeLeftMs`
        }
        public var `partsProcessed`: String?
        public var `partsTotal`: String?
        public var `timeLeftMs`: String?
    }

    public class VideoProjectDetails: Codable {
        public init (`tags`: [String]?) {
            self.`tags` = `tags`
        }
        public var `tags`: [String]?
    }

    public class VideoRating: Codable {
        public init (`rating`: String?, `videoId`: String?) {
            self.`rating` = `rating`
            self.`videoId` = `videoId`
        }
        public var `rating`: String?
        public var `videoId`: String?
    }

    public class VideoRatingListResponse: Codable {
        public init (`etag`: String?, `eventId`: String?, `items`: [VideoRating]?, `kind`: String?, `visitorId`: String?) {
            self.`etag` = `etag`
            self.`eventId` = `eventId`
            self.`items` = `items`
            self.`kind` = `kind`
            self.`visitorId` = `visitorId`
        }
        public var `etag`: String?
        public var `eventId`: String?
        public var `items`: [VideoRating]?
        public var `kind`: String?
        public var `visitorId`: String?
    }

    public class VideoRecordingDetails: Codable {
        public init (`location`: GeoPoint?, `locationDescription`: String?, `recordingDate`: String?) {
            self.`location` = `location`
            self.`locationDescription` = `locationDescription`
            self.`recordingDate` = `recordingDate`
        }
        public var `location`: GeoPoint?
        public var `locationDescription`: String?
        public var `recordingDate`: String?
    }

    public class VideoSnippet: Codable {
        public init (`categoryId`: String?, `channelId`: String?, `channelTitle`: String?, `defaultAudioLanguage`: String?, `defaultLanguage`: String?, `description`: String?, `liveBroadcastContent`: String?, `localized`: VideoLocalization?, `publishedAt`: String?, `tags`: [String]?, `thumbnails`: ThumbnailDetails?, `title`: String?) {
            self.`categoryId` = `categoryId`
            self.`channelId` = `channelId`
            self.`channelTitle` = `channelTitle`
            self.`defaultAudioLanguage` = `defaultAudioLanguage`
            self.`defaultLanguage` = `defaultLanguage`
            self.`description` = `description`
            self.`liveBroadcastContent` = `liveBroadcastContent`
            self.`localized` = `localized`
            self.`publishedAt` = `publishedAt`
            self.`tags` = `tags`
            self.`thumbnails` = `thumbnails`
            self.`title` = `title`
        }
        public var `categoryId`: String?
        public var `channelId`: String?
        public var `channelTitle`: String?
        public var `defaultAudioLanguage`: String?
        public var `defaultLanguage`: String?
        public var `description`: String?
        public var `liveBroadcastContent`: String?
        public var `localized`: VideoLocalization?
        public var `publishedAt`: String?
        public var `tags`: [String]?
        public var `thumbnails`: ThumbnailDetails?
        public var `title`: String?
    }

    public class VideoStatistics: Codable {
        public init (`commentCount`: String?, `dislikeCount`: String?, `favoriteCount`: String?, `likeCount`: String?, `viewCount`: String?) {
            self.`commentCount` = `commentCount`
            self.`dislikeCount` = `dislikeCount`
            self.`favoriteCount` = `favoriteCount`
            self.`likeCount` = `likeCount`
            self.`viewCount` = `viewCount`
        }
        public var `commentCount`: String?
        public var `dislikeCount`: String?
        public var `favoriteCount`: String?
        public var `likeCount`: String?
        public var `viewCount`: String?
    }

    public class VideoStatus: Codable {
        public init (`embeddable`: Bool?, `failureReason`: String?, `license`: String?, `madeForKids`: Bool?, `privacyStatus`: String?, `publicStatsViewable`: Bool?, `publishAt`: String?, `rejectionReason`: String?, `selfDeclaredMadeForKids`: Bool?, `uploadStatus`: String?) {
            self.`embeddable` = `embeddable`
            self.`failureReason` = `failureReason`
            self.`license` = `license`
            self.`madeForKids` = `madeForKids`
            self.`privacyStatus` = `privacyStatus`
            self.`publicStatsViewable` = `publicStatsViewable`
            self.`publishAt` = `publishAt`
            self.`rejectionReason` = `rejectionReason`
            self.`selfDeclaredMadeForKids` = `selfDeclaredMadeForKids`
            self.`uploadStatus` = `uploadStatus`
        }
        public var `embeddable`: Bool?
        public var `failureReason`: String?
        public var `license`: String?
        public var `madeForKids`: Bool?
        public var `privacyStatus`: String?
        public var `publicStatsViewable`: Bool?
        public var `publishAt`: String?
        public var `rejectionReason`: String?
        public var `selfDeclaredMadeForKids`: Bool?
        public var `uploadStatus`: String?
    }

    public class VideoSuggestions: Codable {
        public init (`editorSuggestions`: [String]?, `processingErrors`: [String]?, `processingHints`: [String]?, `processingWarnings`: [String]?, `tagSuggestions`: [VideoSuggestionsTagSuggestion]?) {
            self.`editorSuggestions` = `editorSuggestions`
            self.`processingErrors` = `processingErrors`
            self.`processingHints` = `processingHints`
            self.`processingWarnings` = `processingWarnings`
            self.`tagSuggestions` = `tagSuggestions`
        }
        public var `editorSuggestions`: [String]?
        public var `processingErrors`: [String]?
        public var `processingHints`: [String]?
        public var `processingWarnings`: [String]?
        public var `tagSuggestions`: [VideoSuggestionsTagSuggestion]?
    }

    public class VideoSuggestionsTagSuggestion: Codable {
        public init (`categoryRestricts`: [String]?, `tag`: String?) {
            self.`categoryRestricts` = `categoryRestricts`
            self.`tag` = `tag`
        }
        public var `categoryRestricts`: [String]?
        public var `tag`: String?
    }

    public class VideoTopicDetails: Codable {
        public init (`relevantTopicIds`: [String]?, `topicCategories`: [String]?, `topicIds`: [String]?) {
            self.`relevantTopicIds` = `relevantTopicIds`
            self.`topicCategories` = `topicCategories`
            self.`topicIds` = `topicIds`
        }
        public var `relevantTopicIds`: [String]?
        public var `topicCategories`: [String]?
        public var `topicIds`: [String]?
    }

    public class WatchSettings: Codable {
        public init (`backgroundColor`: String?, `featuredPlaylistId`: String?, `textColor`: String?) {
            self.`backgroundColor` = `backgroundColor`
            self.`featuredPlaylistId` = `featuredPlaylistId`
            self.`textColor` = `textColor`
        }
        public var `backgroundColor`: String?
        public var `featuredPlaylistId`: String?
        public var `textColor`: String?
    }




    public class abuseReportsinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func abuseReports_insert (
        request: AbuseReport,
        parameters: abuseReportsinsertParameters,
        completion: @escaping (AbuseReport?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/abuseReports",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class activitieslistParameters: Parameterizable {
        public init (`channelId`: String?, `home`: Bool?, `maxResults`: Int?, `mine`: Bool?, `pageToken`: String?, `part`: String?, `publishedAfter`: String?, `publishedBefore`: String?, `regionCode`: String?) {
            self.`channelId` = `channelId`
            self.`home` = `home`
            self.`maxResults` = `maxResults`
            self.`mine` = `mine`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
            self.`publishedAfter` = `publishedAfter`
            self.`publishedBefore` = `publishedBefore`
            self.`regionCode` = `regionCode`
        }

        public var `channelId`: String?
        public var `home`: Bool?
        public var `maxResults`: Int?
        public var `mine`: Bool?
        public var `pageToken`: String?
        public var `part`: String?
        public var `publishedAfter`: String?
        public var `publishedBefore`: String?
        public var `regionCode`: String?

        public func queryParameters() -> [String] {
            ["channelId","home","maxResults","mine","pageToken","part","publishedAfter","publishedBefore","regionCode"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func activities_list (
        parameters: activitieslistParameters,
        completion: @escaping (ActivityListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/activities",
                parameters: parameters,
                completion: completion)
    }


    public class captionsdeleteParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOf`: String?, `onBehalfOfContentOwner`: String?) {
            self.`id` = `id`
            self.`onBehalfOf` = `onBehalfOf`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `id`: String?
        public var `onBehalfOf`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOf","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func captions_delete (
        parameters: captionsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/captions",
                parameters: parameters,
                completion: completion)
    }


    public class captionsdownloadParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOf`: String?, `onBehalfOfContentOwner`: String?, `tfmt`: String?, `tlang`: String?) {
            self.`id` = `id`
            self.`onBehalfOf` = `onBehalfOf`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`tfmt` = `tfmt`
            self.`tlang` = `tlang`
        }

        public var `id`: String?
        public var `onBehalfOf`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `tfmt`: String?
        public var `tlang`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOf","onBehalfOfContentOwner","tfmt","tlang"]
        }
        public func pathParameters() -> [String] {
            ["id"]
        }
    }

    public func captions_download (
        parameters: captionsdownloadParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/captions/{id}",
                parameters: parameters,
                completion: completion)
    }


    public class captionsinsertParameters: Parameterizable {
        public init (`onBehalfOf`: String?, `onBehalfOfContentOwner`: String?, `part`: String?, `sync`: Bool?) {
            self.`onBehalfOf` = `onBehalfOf`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
            self.`sync` = `sync`
        }

        public var `onBehalfOf`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?
        public var `sync`: Bool?

        public func queryParameters() -> [String] {
            ["onBehalfOf","onBehalfOfContentOwner","part","sync"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func captions_insert (
        request: Caption,
        parameters: captionsinsertParameters,
        completion: @escaping (Caption?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/captions",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class captionslistParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOf`: String?, `onBehalfOfContentOwner`: String?, `part`: String?, `videoId`: String?) {
            self.`id` = `id`
            self.`onBehalfOf` = `onBehalfOf`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
            self.`videoId` = `videoId`
        }

        public var `id`: String?
        public var `onBehalfOf`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOf","onBehalfOfContentOwner","part","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func captions_list (
        parameters: captionslistParameters,
        completion: @escaping (CaptionListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/captions",
                parameters: parameters,
                completion: completion)
    }


    public class captionsupdateParameters: Parameterizable {
        public init (`onBehalfOf`: String?, `onBehalfOfContentOwner`: String?, `part`: String?, `sync`: Bool?) {
            self.`onBehalfOf` = `onBehalfOf`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
            self.`sync` = `sync`
        }

        public var `onBehalfOf`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?
        public var `sync`: Bool?

        public func queryParameters() -> [String] {
            ["onBehalfOf","onBehalfOfContentOwner","part","sync"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func captions_update (
        request: Caption,
        parameters: captionsupdateParameters,
        completion: @escaping (Caption?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/captions",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class channelBannersinsertParameters: Parameterizable {
        public init (`channelId`: String?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?) {
            self.`channelId` = `channelId`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
        }

        public var `channelId`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?

        public func queryParameters() -> [String] {
            ["channelId","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func channelBanners_insert (
        request: ChannelBannerResource,
        parameters: channelBannersinsertParameters,
        completion: @escaping (ChannelBannerResource?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/channelBanners/insert",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class channelSectionsdeleteParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func channelSections_delete (
        parameters: channelSectionsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/channelSections",
                parameters: parameters,
                completion: completion)
    }


    public class channelSectionsinsertParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func channelSections_insert (
        request: ChannelSection,
        parameters: channelSectionsinsertParameters,
        completion: @escaping (ChannelSection?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/channelSections",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class channelSectionslistParameters: Parameterizable {
        public init (`channelId`: String?, `hl`: String?, `id`: String?, `mine`: Bool?, `onBehalfOfContentOwner`: String?, `part`: String?) {
            self.`channelId` = `channelId`
            self.`hl` = `hl`
            self.`id` = `id`
            self.`mine` = `mine`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
        }

        public var `channelId`: String?
        public var `hl`: String?
        public var `id`: String?
        public var `mine`: Bool?
        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["channelId","hl","id","mine","onBehalfOfContentOwner","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func channelSections_list (
        parameters: channelSectionslistParameters,
        completion: @escaping (ChannelSectionListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/channelSections",
                parameters: parameters,
                completion: completion)
    }


    public class channelSectionsupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func channelSections_update (
        request: ChannelSection,
        parameters: channelSectionsupdateParameters,
        completion: @escaping (ChannelSection?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/channelSections",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class channelslistParameters: Parameterizable {
        public init (`categoryId`: String?, `forUsername`: String?, `hl`: String?, `id`: String?, `managedByMe`: Bool?, `maxResults`: Int?, `mine`: Bool?, `mySubscribers`: Bool?, `onBehalfOfContentOwner`: String?, `pageToken`: String?, `part`: String?) {
            self.`categoryId` = `categoryId`
            self.`forUsername` = `forUsername`
            self.`hl` = `hl`
            self.`id` = `id`
            self.`managedByMe` = `managedByMe`
            self.`maxResults` = `maxResults`
            self.`mine` = `mine`
            self.`mySubscribers` = `mySubscribers`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `categoryId`: String?
        public var `forUsername`: String?
        public var `hl`: String?
        public var `id`: String?
        public var `managedByMe`: Bool?
        public var `maxResults`: Int?
        public var `mine`: Bool?
        public var `mySubscribers`: Bool?
        public var `onBehalfOfContentOwner`: String?
        public var `pageToken`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["categoryId","forUsername","hl","id","managedByMe","maxResults","mine","mySubscribers","onBehalfOfContentOwner","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func channels_list (
        parameters: channelslistParameters,
        completion: @escaping (ChannelListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/channels",
                parameters: parameters,
                completion: completion)
    }


    public class channelsupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func channels_update (
        request: Channel,
        parameters: channelsupdateParameters,
        completion: @escaping (Channel?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/channels",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class commentThreadsinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func commentThreads_insert (
        request: CommentThread,
        parameters: commentThreadsinsertParameters,
        completion: @escaping (CommentThread?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/commentThreads",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class commentThreadslistParameters: Parameterizable {
        public init (`allThreadsRelatedToChannelId`: String?, `channelId`: String?, `id`: String?, `maxResults`: Int?, `moderationStatus`: String?, `order`: String?, `pageToken`: String?, `part`: String?, `searchTerms`: String?, `textFormat`: String?, `videoId`: String?) {
            self.`allThreadsRelatedToChannelId` = `allThreadsRelatedToChannelId`
            self.`channelId` = `channelId`
            self.`id` = `id`
            self.`maxResults` = `maxResults`
            self.`moderationStatus` = `moderationStatus`
            self.`order` = `order`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
            self.`searchTerms` = `searchTerms`
            self.`textFormat` = `textFormat`
            self.`videoId` = `videoId`
        }

        public var `allThreadsRelatedToChannelId`: String?
        public var `channelId`: String?
        public var `id`: String?
        public var `maxResults`: Int?
        public var `moderationStatus`: String?
        public var `order`: String?
        public var `pageToken`: String?
        public var `part`: String?
        public var `searchTerms`: String?
        public var `textFormat`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["allThreadsRelatedToChannelId","channelId","id","maxResults","moderationStatus","order","pageToken","part","searchTerms","textFormat","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func commentThreads_list (
        parameters: commentThreadslistParameters,
        completion: @escaping (CommentThreadListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/commentThreads",
                parameters: parameters,
                completion: completion)
    }


    public class commentThreadsupdateParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func commentThreads_update (
        request: CommentThread,
        parameters: commentThreadsupdateParameters,
        completion: @escaping (CommentThread?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/commentThreads",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class commentsdeleteParameters: Parameterizable {
        public init (`id`: String?) {
            self.`id` = `id`
        }

        public var `id`: String?

        public func queryParameters() -> [String] {
            ["id"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func comments_delete (
        parameters: commentsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/comments",
                parameters: parameters,
                completion: completion)
    }


    public class commentsinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func comments_insert (
        request: Comment,
        parameters: commentsinsertParameters,
        completion: @escaping (Comment?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/comments",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class commentslistParameters: Parameterizable {
        public init (`id`: String?, `maxResults`: Int?, `pageToken`: String?, `parentId`: String?, `part`: String?, `textFormat`: String?) {
            self.`id` = `id`
            self.`maxResults` = `maxResults`
            self.`pageToken` = `pageToken`
            self.`parentId` = `parentId`
            self.`part` = `part`
            self.`textFormat` = `textFormat`
        }

        public var `id`: String?
        public var `maxResults`: Int?
        public var `pageToken`: String?
        public var `parentId`: String?
        public var `part`: String?
        public var `textFormat`: String?

        public func queryParameters() -> [String] {
            ["id","maxResults","pageToken","parentId","part","textFormat"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func comments_list (
        parameters: commentslistParameters,
        completion: @escaping (CommentListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/comments",
                parameters: parameters,
                completion: completion)
    }


    public class commentsmarkAsSpamParameters: Parameterizable {
        public init (`id`: String?) {
            self.`id` = `id`
        }

        public var `id`: String?

        public func queryParameters() -> [String] {
            ["id"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func comments_markAsSpam (
        parameters: commentsmarkAsSpamParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/comments/markAsSpam",
                parameters: parameters,
                completion: completion)
    }


    public class commentssetModerationStatusParameters: Parameterizable {
        public init (`banAuthor`: Bool?, `id`: String?, `moderationStatus`: String?) {
            self.`banAuthor` = `banAuthor`
            self.`id` = `id`
            self.`moderationStatus` = `moderationStatus`
        }

        public var `banAuthor`: Bool?
        public var `id`: String?
        public var `moderationStatus`: String?

        public func queryParameters() -> [String] {
            ["banAuthor","id","moderationStatus"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func comments_setModerationStatus (
        parameters: commentssetModerationStatusParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/comments/setModerationStatus",
                parameters: parameters,
                completion: completion)
    }


    public class commentsupdateParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func comments_update (
        request: Comment,
        parameters: commentsupdateParameters,
        completion: @escaping (Comment?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/comments",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class endscreensgetParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?, `videoId`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
            self.`videoId` = `videoId`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func endscreens_get (
        parameters: endscreensgetParameters,
        completion: @escaping (EndscreenGetResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/endscreen",
                parameters: parameters,
                completion: completion)
    }


    public class endscreensupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?, `videoId`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
            self.`videoId` = `videoId`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func endscreens_update (
        request: Endscreen,
        parameters: endscreensupdateParameters,
        completion: @escaping (Endscreen?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/endscreen",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class guideCategorieslistParameters: Parameterizable {
        public init (`hl`: String?, `id`: String?, `part`: String?, `regionCode`: String?) {
            self.`hl` = `hl`
            self.`id` = `id`
            self.`part` = `part`
            self.`regionCode` = `regionCode`
        }

        public var `hl`: String?
        public var `id`: String?
        public var `part`: String?
        public var `regionCode`: String?

        public func queryParameters() -> [String] {
            ["hl","id","part","regionCode"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func guideCategories_list (
        parameters: guideCategorieslistParameters,
        completion: @escaping (GuideCategoryListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/guideCategories",
                parameters: parameters,
                completion: completion)
    }


    public class i18nLanguageslistParameters: Parameterizable {
        public init (`hl`: String?, `part`: String?) {
            self.`hl` = `hl`
            self.`part` = `part`
        }

        public var `hl`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["hl","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func i18nLanguages_list (
        parameters: i18nLanguageslistParameters,
        completion: @escaping (I18nLanguageListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/i18nLanguages",
                parameters: parameters,
                completion: completion)
    }


    public class i18nRegionslistParameters: Parameterizable {
        public init (`hl`: String?, `part`: String?) {
            self.`hl` = `hl`
            self.`part` = `part`
        }

        public var `hl`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["hl","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func i18nRegions_list (
        parameters: i18nRegionslistParameters,
        completion: @escaping (I18nRegionListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/i18nRegions",
                parameters: parameters,
                completion: completion)
    }


    public class liveBroadcastsbindParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?, `streamId`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
            self.`streamId` = `streamId`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?
        public var `streamId`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part","streamId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveBroadcasts_bind (
        parameters: liveBroadcastsbindParameters,
        completion: @escaping (LiveBroadcast?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveBroadcasts/bind",
                parameters: parameters,
                completion: completion)
    }


    public class liveBroadcastscontrolParameters: Parameterizable {
        public init (`displaySlate`: Bool?, `id`: String?, `offsetTimeMs`: String?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?, `walltime`: String?) {
            self.`displaySlate` = `displaySlate`
            self.`id` = `id`
            self.`offsetTimeMs` = `offsetTimeMs`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
            self.`walltime` = `walltime`
        }

        public var `displaySlate`: Bool?
        public var `id`: String?
        public var `offsetTimeMs`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?
        public var `walltime`: String?

        public func queryParameters() -> [String] {
            ["displaySlate","id","offsetTimeMs","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part","walltime"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveBroadcasts_control (
        parameters: liveBroadcastscontrolParameters,
        completion: @escaping (LiveBroadcast?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveBroadcasts/control",
                parameters: parameters,
                completion: completion)
    }


    public class liveBroadcastsdeleteParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveBroadcasts_delete (
        parameters: liveBroadcastsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/liveBroadcasts",
                parameters: parameters,
                completion: completion)
    }


    public class liveBroadcastsinsertParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveBroadcasts_insert (
        request: LiveBroadcast,
        parameters: liveBroadcastsinsertParameters,
        completion: @escaping (LiveBroadcast?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveBroadcasts",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class liveBroadcastslistParameters: Parameterizable {
        public init (`broadcastStatus`: String?, `broadcastType`: String?, `id`: String?, `maxResults`: Int?, `mine`: Bool?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `pageToken`: String?, `part`: String?) {
            self.`broadcastStatus` = `broadcastStatus`
            self.`broadcastType` = `broadcastType`
            self.`id` = `id`
            self.`maxResults` = `maxResults`
            self.`mine` = `mine`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `broadcastStatus`: String?
        public var `broadcastType`: String?
        public var `id`: String?
        public var `maxResults`: Int?
        public var `mine`: Bool?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `pageToken`: String?
        public var `part`: String?

        init() {}

        public func queryParameters() -> [String] {
            ["broadcastStatus","broadcastType","id","maxResults","mine","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveBroadcasts_list (
        parameters: liveBroadcastslistParameters,
        completion: @escaping (LiveBroadcastListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/liveBroadcasts",
                parameters: parameters,
                completion: completion)
    }


    public class liveBroadcaststransitionParameters: Parameterizable {
        public init (`broadcastStatus`: String?, `id`: String?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?) {
            self.`broadcastStatus` = `broadcastStatus`
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
        }

        public var `broadcastStatus`: String?
        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["broadcastStatus","id","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveBroadcasts_transition (
        parameters: liveBroadcaststransitionParameters,
        completion: @escaping (LiveBroadcast?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveBroadcasts/transition",
                parameters: parameters,
                completion: completion)
    }


    public class liveBroadcastsupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveBroadcasts_update (
        request: LiveBroadcast,
        parameters: liveBroadcastsupdateParameters,
        completion: @escaping (LiveBroadcast?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/liveBroadcasts",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class liveChatBansdeleteParameters: Parameterizable {
        public init (`id`: String?) {
            self.`id` = `id`
        }

        public var `id`: String?

        public func queryParameters() -> [String] {
            ["id"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatBans_delete (
        parameters: liveChatBansdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/liveChat/bans",
                parameters: parameters,
                completion: completion)
    }


    public class liveChatBansinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatBans_insert (
        request: LiveChatBan,
        parameters: liveChatBansinsertParameters,
        completion: @escaping (LiveChatBan?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveChat/bans",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class liveChatMessagesdeleteParameters: Parameterizable {
        public init (`id`: String?) {
            self.`id` = `id`
        }

        public var `id`: String?

        public func queryParameters() -> [String] {
            ["id"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatMessages_delete (
        parameters: liveChatMessagesdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/liveChat/messages",
                parameters: parameters,
                completion: completion)
    }


    public class liveChatMessagesinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatMessages_insert (
        request: LiveChatMessage,
        parameters: liveChatMessagesinsertParameters,
        completion: @escaping (LiveChatMessage?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveChat/messages",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class liveChatMessageslistParameters: Parameterizable {
        public init (`hl`: String?, `liveChatId`: String?, `maxResults`: Int?, `pageToken`: String?, `part`: String?, `profileImageSize`: Int?) {
            self.`hl` = `hl`
            self.`liveChatId` = `liveChatId`
            self.`maxResults` = `maxResults`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
            self.`profileImageSize` = `profileImageSize`
        }

        public var `hl`: String?
        public var `liveChatId`: String?
        public var `maxResults`: Int?
        public var `pageToken`: String?
        public var `part`: String?
        public var `profileImageSize`: Int?

        public func queryParameters() -> [String] {
            ["hl","liveChatId","maxResults","pageToken","part","profileImageSize"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatMessages_list (
        parameters: liveChatMessageslistParameters,
        completion: @escaping (LiveChatMessageListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/liveChat/messages",
                parameters: parameters,
                completion: completion)
    }


    public class liveChatModeratorsdeleteParameters: Parameterizable {
        public init (`id`: String?) {
            self.`id` = `id`
        }

        public var `id`: String?

        public func queryParameters() -> [String] {
            ["id"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatModerators_delete (
        parameters: liveChatModeratorsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/liveChat/moderators",
                parameters: parameters,
                completion: completion)
    }


    public class liveChatModeratorsinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatModerators_insert (
        request: LiveChatModerator,
        parameters: liveChatModeratorsinsertParameters,
        completion: @escaping (LiveChatModerator?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveChat/moderators",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class liveChatModeratorslistParameters: Parameterizable {
        public init (`liveChatId`: String?, `maxResults`: Int?, `pageToken`: String?, `part`: String?) {
            self.`liveChatId` = `liveChatId`
            self.`maxResults` = `maxResults`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `liveChatId`: String?
        public var `maxResults`: Int?
        public var `pageToken`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["liveChatId","maxResults","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveChatModerators_list (
        parameters: liveChatModeratorslistParameters,
        completion: @escaping (LiveChatModeratorListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/liveChat/moderators",
                parameters: parameters,
                completion: completion)
    }


    public class liveStreamsdeleteParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveStreams_delete (
        parameters: liveStreamsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/liveStreams",
                parameters: parameters,
                completion: completion)
    }


    public class liveStreamsinsertParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveStreams_insert (
        request: LiveStream,
        parameters: liveStreamsinsertParameters,
        completion: @escaping (LiveStream?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/liveStreams",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class liveStreamslistParameters: Parameterizable {
        public init (`id`: String?, `maxResults`: Int?, `mine`: Bool?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `pageToken`: String?, `part`: String?) {
            self.`id` = `id`
            self.`maxResults` = `maxResults`
            self.`mine` = `mine`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `id`: String?
        public var `maxResults`: Int?
        public var `mine`: Bool?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `pageToken`: String?
        public var `part`: String?

        init() {}

        public func queryParameters() -> [String] {
            ["id","maxResults","mine","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveStreams_list (
        parameters: liveStreamslistParameters,
        completion: @escaping (LiveStreamListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/liveStreams",
                parameters: parameters,
                completion: completion)
    }


    public class liveStreamsupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func liveStreams_update (
        request: LiveStream,
        parameters: liveStreamsupdateParameters,
        completion: @escaping (LiveStream?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/liveStreams",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class memberslistParameters: Parameterizable {
        public init (`filterByMemberChannelId`: String?, `hasAccessToLevel`: String?, `maxResults`: Int?, `mode`: String?, `pageToken`: String?, `part`: String?) {
            self.`filterByMemberChannelId` = `filterByMemberChannelId`
            self.`hasAccessToLevel` = `hasAccessToLevel`
            self.`maxResults` = `maxResults`
            self.`mode` = `mode`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `filterByMemberChannelId`: String?
        public var `hasAccessToLevel`: String?
        public var `maxResults`: Int?
        public var `mode`: String?
        public var `pageToken`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["filterByMemberChannelId","hasAccessToLevel","maxResults","mode","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func members_list (
        parameters: memberslistParameters,
        completion: @escaping (MemberListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/members",
                parameters: parameters,
                completion: completion)
    }


    public class membershipsLevelslistParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func membershipsLevels_list (
        parameters: membershipsLevelslistParameters,
        completion: @escaping (MembershipsLevelListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/membershipsLevels",
                parameters: parameters,
                completion: completion)
    }


    public class playlistItemsdeleteParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlistItems_delete (
        parameters: playlistItemsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/playlistItems",
                parameters: parameters,
                completion: completion)
    }


    public class playlistItemsinsertParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlistItems_insert (
        request: PlaylistItem,
        parameters: playlistItemsinsertParameters,
        completion: @escaping (PlaylistItem?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/playlistItems",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class playlistItemslistParameters: Parameterizable {
        public init (`id`: String?, `maxResults`: Int?, `onBehalfOfContentOwner`: String?, `pageToken`: String?, `part`: String?, `playlistId`: String?, `videoId`: String?) {
            self.`id` = `id`
            self.`maxResults` = `maxResults`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
            self.`playlistId` = `playlistId`
            self.`videoId` = `videoId`
        }

        public var `id`: String?
        public var `maxResults`: Int?
        public var `onBehalfOfContentOwner`: String?
        public var `pageToken`: String?
        public var `part`: String?
        public var `playlistId`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["id","maxResults","onBehalfOfContentOwner","pageToken","part","playlistId","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlistItems_list (
        parameters: playlistItemslistParameters,
        completion: @escaping (PlaylistItemListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/playlistItems",
                parameters: parameters,
                completion: completion)
    }


    public class playlistItemsupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlistItems_update (
        request: PlaylistItem,
        parameters: playlistItemsupdateParameters,
        completion: @escaping (PlaylistItem?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/playlistItems",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class playlistsdeleteParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlists_delete (
        parameters: playlistsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/playlists",
                parameters: parameters,
                completion: completion)
    }


    public class playlistsinsertParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlists_insert (
        request: Playlist,
        parameters: playlistsinsertParameters,
        completion: @escaping (Playlist?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/playlists",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class playlistslistParameters: Parameterizable {
        public init (`channelId`: String?, `hl`: String?, `id`: String?, `maxResults`: Int?, `mine`: Bool?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `pageToken`: String?, `part`: String?) {
            self.`channelId` = `channelId`
            self.`hl` = `hl`
            self.`id` = `id`
            self.`maxResults` = `maxResults`
            self.`mine` = `mine`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `channelId`: String?
        public var `hl`: String?
        public var `id`: String?
        public var `maxResults`: Int?
        public var `mine`: Bool?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `pageToken`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["channelId","hl","id","maxResults","mine","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlists_list (
        parameters: playlistslistParameters,
        completion: @escaping (PlaylistListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/playlists",
                parameters: parameters,
                completion: completion)
    }


    public class playlistsupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func playlists_update (
        request: Playlist,
        parameters: playlistsupdateParameters,
        completion: @escaping (Playlist?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/playlists",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class searchlistParameters: Parameterizable {
        public init (`channelId`: String?, `channelType`: String?, `eventType`: String?, `forContentOwner`: Bool?, `forDeveloper`: Bool?, `forMine`: Bool?, `location`: String?, `locationRadius`: String?, `maxResults`: Int?, `onBehalfOfContentOwner`: String?, `order`: String?, `pageToken`: String?, `part`: String?, `publishedAfter`: String?, `publishedBefore`: String?, `q`: String?, `regionCode`: String?, `relatedToVideoId`: String?, `relevanceLanguage`: String?, `safeSearch`: String?, `topicId`: String?, `type`: String?, `videoCaption`: String?, `videoCategoryId`: String?, `videoDefinition`: String?, `videoDimension`: String?, `videoDuration`: String?, `videoEmbeddable`: String?, `videoLicense`: String?, `videoSyndicated`: String?, `videoType`: String?) {
            self.`channelId` = `channelId`
            self.`channelType` = `channelType`
            self.`eventType` = `eventType`
            self.`forContentOwner` = `forContentOwner`
            self.`forDeveloper` = `forDeveloper`
            self.`forMine` = `forMine`
            self.`location` = `location`
            self.`locationRadius` = `locationRadius`
            self.`maxResults` = `maxResults`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`order` = `order`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
            self.`publishedAfter` = `publishedAfter`
            self.`publishedBefore` = `publishedBefore`
            self.`q` = `q`
            self.`regionCode` = `regionCode`
            self.`relatedToVideoId` = `relatedToVideoId`
            self.`relevanceLanguage` = `relevanceLanguage`
            self.`safeSearch` = `safeSearch`
            self.`topicId` = `topicId`
            self.`type` = `type`
            self.`videoCaption` = `videoCaption`
            self.`videoCategoryId` = `videoCategoryId`
            self.`videoDefinition` = `videoDefinition`
            self.`videoDimension` = `videoDimension`
            self.`videoDuration` = `videoDuration`
            self.`videoEmbeddable` = `videoEmbeddable`
            self.`videoLicense` = `videoLicense`
            self.`videoSyndicated` = `videoSyndicated`
            self.`videoType` = `videoType`
        }

        public var `channelId`: String?
        public var `channelType`: String?
        public var `eventType`: String?
        public var `forContentOwner`: Bool?
        public var `forDeveloper`: Bool?
        public var `forMine`: Bool?
        public var `location`: String?
        public var `locationRadius`: String?
        public var `maxResults`: Int?
        public var `onBehalfOfContentOwner`: String?
        public var `order`: String?
        public var `pageToken`: String?
        public var `part`: String?
        public var `publishedAfter`: String?
        public var `publishedBefore`: String?
        public var `q`: String?
        public var `regionCode`: String?
        public var `relatedToVideoId`: String?
        public var `relevanceLanguage`: String?
        public var `safeSearch`: String?
        public var `topicId`: String?
        public var `type`: String?
        public var `videoCaption`: String?
        public var `videoCategoryId`: String?
        public var `videoDefinition`: String?
        public var `videoDimension`: String?
        public var `videoDuration`: String?
        public var `videoEmbeddable`: String?
        public var `videoLicense`: String?
        public var `videoSyndicated`: String?
        public var `videoType`: String?

        public func queryParameters() -> [String] {
            ["channelId","channelType","eventType","forContentOwner","forDeveloper","forMine","location","locationRadius","maxResults","onBehalfOfContentOwner","order","pageToken","part","publishedAfter","publishedBefore","q","regionCode","relatedToVideoId","relevanceLanguage","safeSearch","topicId","type","videoCaption","videoCategoryId","videoDefinition","videoDimension","videoDuration","videoEmbeddable","videoLicense","videoSyndicated","videoType"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func search_list (
        parameters: searchlistParameters,
        completion: @escaping (SearchListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/search",
                parameters: parameters,
                completion: completion)
    }


    public class sponsorslistParameters: Parameterizable {
        public init (`filter`: String?, `maxResults`: Int?, `pageToken`: String?, `part`: String?) {
            self.`filter` = `filter`
            self.`maxResults` = `maxResults`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `filter`: String?
        public var `maxResults`: Int?
        public var `pageToken`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["filter","maxResults","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func sponsors_list (
        parameters: sponsorslistParameters,
        completion: @escaping (SponsorListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/sponsors",
                parameters: parameters,
                completion: completion)
    }


    public class subscriptionsdeleteParameters: Parameterizable {
        public init (`id`: String?) {
            self.`id` = `id`
        }

        public var `id`: String?

        public func queryParameters() -> [String] {
            ["id"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func subscriptions_delete (
        parameters: subscriptionsdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/subscriptions",
                parameters: parameters,
                completion: completion)
    }


    public class subscriptionsinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func subscriptions_insert (
        request: Subscription,
        parameters: subscriptionsinsertParameters,
        completion: @escaping (Subscription?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/subscriptions",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class subscriptionslistParameters: Parameterizable {
        public init (`channelId`: String?, `forChannelId`: String?, `id`: String?, `maxResults`: Int?, `mine`: Bool?, `myRecentSubscribers`: Bool?, `mySubscribers`: Bool?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `order`: String?, `pageToken`: String?, `part`: String?) {
            self.`channelId` = `channelId`
            self.`forChannelId` = `forChannelId`
            self.`id` = `id`
            self.`maxResults` = `maxResults`
            self.`mine` = `mine`
            self.`myRecentSubscribers` = `myRecentSubscribers`
            self.`mySubscribers` = `mySubscribers`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`order` = `order`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `channelId`: String?
        public var `forChannelId`: String?
        public var `id`: String?
        public var `maxResults`: Int?
        public var `mine`: Bool?
        public var `myRecentSubscribers`: Bool?
        public var `mySubscribers`: Bool?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `order`: String?
        public var `pageToken`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["channelId","forChannelId","id","maxResults","mine","myRecentSubscribers","mySubscribers","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","order","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func subscriptions_list (
        parameters: subscriptionslistParameters,
        completion: @escaping (SubscriptionListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/subscriptions",
                parameters: parameters,
                completion: completion)
    }


    public class superChatEventslistParameters: Parameterizable {
        public init (`hl`: String?, `maxResults`: Int?, `pageToken`: String?, `part`: String?) {
            self.`hl` = `hl`
            self.`maxResults` = `maxResults`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
        }

        public var `hl`: String?
        public var `maxResults`: Int?
        public var `pageToken`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["hl","maxResults","pageToken","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func superChatEvents_list (
        parameters: superChatEventslistParameters,
        completion: @escaping (SuperChatEventListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/superChatEvents",
                parameters: parameters,
                completion: completion)
    }


    public class testsinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func tests_insert (
        request: TestItem,
        parameters: testsinsertParameters,
        completion: @escaping (TestItem?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/tests",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class thirdPartyLinksdeleteParameters: Parameterizable {
        public init (`linkingToken`: String?, `part`: String?, `type`: String?) {
            self.`linkingToken` = `linkingToken`
            self.`part` = `part`
            self.`type` = `type`
        }

        public var `linkingToken`: String?
        public var `part`: String?
        public var `type`: String?

        public func queryParameters() -> [String] {
            ["linkingToken","part","type"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func thirdPartyLinks_delete (
        parameters: thirdPartyLinksdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/thirdPartyLinks",
                parameters: parameters,
                completion: completion)
    }


    public class thirdPartyLinksinsertParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func thirdPartyLinks_insert (
        request: ThirdPartyLink,
        parameters: thirdPartyLinksinsertParameters,
        completion: @escaping (ThirdPartyLink?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/thirdPartyLinks",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class thirdPartyLinkslistParameters: Parameterizable {
        public init (`linkingToken`: String?, `part`: String?, `type`: String?) {
            self.`linkingToken` = `linkingToken`
            self.`part` = `part`
            self.`type` = `type`
        }

        public var `linkingToken`: String?
        public var `part`: String?
        public var `type`: String?

        public func queryParameters() -> [String] {
            ["linkingToken","part","type"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func thirdPartyLinks_list (
        parameters: thirdPartyLinkslistParameters,
        completion: @escaping (ThirdPartyLink?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/thirdPartyLinks",
                parameters: parameters,
                completion: completion)
    }


    public class thirdPartyLinksupdateParameters: Parameterizable {
        public init (`part`: String?) {
            self.`part` = `part`
        }

        public var `part`: String?

        public func queryParameters() -> [String] {
            ["part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func thirdPartyLinks_update (
        request: ThirdPartyLink,
        parameters: thirdPartyLinksupdateParameters,
        completion: @escaping (ThirdPartyLink?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/thirdPartyLinks",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class thumbnailssetParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `videoId`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`videoId` = `videoId`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func thumbnails_set (
        parameters: thumbnailssetParameters,
        completion: @escaping (ThumbnailSetResponse?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/thumbnails/set",
                parameters: parameters,
                completion: completion)
    }


    public class videoAbuseReportReasonslistParameters: Parameterizable {
        public init (`hl`: String?, `part`: String?) {
            self.`hl` = `hl`
            self.`part` = `part`
        }

        public var `hl`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["hl","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videoAbuseReportReasons_list (
        parameters: videoAbuseReportReasonslistParameters,
        completion: @escaping (VideoAbuseReportReasonListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/videoAbuseReportReasons",
                parameters: parameters,
                completion: completion)
    }


    public class videoCategorieslistParameters: Parameterizable {
        public init (`hl`: String?, `id`: String?, `part`: String?, `regionCode`: String?) {
            self.`hl` = `hl`
            self.`id` = `id`
            self.`part` = `part`
            self.`regionCode` = `regionCode`
        }

        public var `hl`: String?
        public var `id`: String?
        public var `part`: String?
        public var `regionCode`: String?

        public func queryParameters() -> [String] {
            ["hl","id","part","regionCode"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videoCategories_list (
        parameters: videoCategorieslistParameters,
        completion: @escaping (VideoCategoryListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/videoCategories",
                parameters: parameters,
                completion: completion)
    }


    public class videosdeleteParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videos_delete (
        parameters: videosdeleteParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "DELETE",
                path: "youtube/v3/videos",
                parameters: parameters,
                completion: completion)
    }


    public class videosgetRatingParameters: Parameterizable {
        public init (`id`: String?, `onBehalfOfContentOwner`: String?) {
            self.`id` = `id`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `id`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["id","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videos_getRating (
        parameters: videosgetRatingParameters,
        completion: @escaping (VideoRatingListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/videos/getRating",
                parameters: parameters,
                completion: completion)
    }


    public class videosinsertParameters: Parameterizable {
        public init (`autoLevels`: Bool?, `notifySubscribers`: Bool?, `onBehalfOfContentOwner`: String?, `onBehalfOfContentOwnerChannel`: String?, `part`: String?, `stabilize`: Bool?) {
            self.`autoLevels` = `autoLevels`
            self.`notifySubscribers` = `notifySubscribers`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`onBehalfOfContentOwnerChannel` = `onBehalfOfContentOwnerChannel`
            self.`part` = `part`
            self.`stabilize` = `stabilize`
        }

        public var `autoLevels`: Bool?
        public var `notifySubscribers`: Bool?
        public var `onBehalfOfContentOwner`: String?
        public var `onBehalfOfContentOwnerChannel`: String?
        public var `part`: String?
        public var `stabilize`: Bool?

        public func queryParameters() -> [String] {
            ["autoLevels","notifySubscribers","onBehalfOfContentOwner","onBehalfOfContentOwnerChannel","part","stabilize"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videos_insert (
        request: Video,
        parameters: videosinsertParameters,
        completion: @escaping (Video?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/videos",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class videoslistParameters: Parameterizable {
        public init (`chart`: String?, `hl`: String?, `id`: String?, `locale`: String?, `maxHeight`: Int?, `maxResults`: Int?, `maxWidth`: Int?, `myRating`: String?, `onBehalfOfContentOwner`: String?, `pageToken`: String?, `part`: String?, `regionCode`: String?, `videoCategoryId`: String?) {
            self.`chart` = `chart`
            self.`hl` = `hl`
            self.`id` = `id`
            self.`locale` = `locale`
            self.`maxHeight` = `maxHeight`
            self.`maxResults` = `maxResults`
            self.`maxWidth` = `maxWidth`
            self.`myRating` = `myRating`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`pageToken` = `pageToken`
            self.`part` = `part`
            self.`regionCode` = `regionCode`
            self.`videoCategoryId` = `videoCategoryId`
        }

        public var `chart`: String?
        public var `hl`: String?
        public var `id`: String?
        public var `locale`: String?
        public var `maxHeight`: Int?
        public var `maxResults`: Int?
        public var `maxWidth`: Int?
        public var `myRating`: String?
        public var `onBehalfOfContentOwner`: String?
        public var `pageToken`: String?
        public var `part`: String?
        public var `regionCode`: String?
        public var `videoCategoryId`: String?

        public func queryParameters() -> [String] {
            ["chart","hl","id","locale","maxHeight","maxResults","maxWidth","myRating","onBehalfOfContentOwner","pageToken","part","regionCode","videoCategoryId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videos_list (
        parameters: videoslistParameters,
        completion: @escaping (VideoListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/videos",
                parameters: parameters,
                completion: completion)
    }


    public class videosrateParameters: Parameterizable {
        public init (`id`: String?, `rating`: String?) {
            self.`id` = `id`
            self.`rating` = `rating`
        }

        public var `id`: String?
        public var `rating`: String?

        public func queryParameters() -> [String] {
            ["id","rating"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videos_rate (
        parameters: videosrateParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/videos/rate",
                parameters: parameters,
                completion: completion)
    }


    public class videosreportAbuseParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videos_reportAbuse (
        request: VideoAbuseReport,
        parameters: videosreportAbuseParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/videos/reportAbuse",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class videosupdateParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func videos_update (
        request: Video,
        parameters: videosupdateParameters,
        completion: @escaping (Video?, Error?) -> ()) throws {
            try perform(
                method: "PUT",
                path: "youtube/v3/videos",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class watermarkssetParameters: Parameterizable {
        public init (`channelId`: String?, `onBehalfOfContentOwner`: String?) {
            self.`channelId` = `channelId`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `channelId`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["channelId","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func watermarks_set (
        request: InvideoBranding,
        parameters: watermarkssetParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/watermarks/set",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class watermarksunsetParameters: Parameterizable {
        public init (`channelId`: String?, `onBehalfOfContentOwner`: String?) {
            self.`channelId` = `channelId`
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
        }

        public var `channelId`: String?
        public var `onBehalfOfContentOwner`: String?

        public func queryParameters() -> [String] {
            ["channelId","onBehalfOfContentOwner"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func watermarks_unset (
        parameters: watermarksunsetParameters,
        completion: @escaping (Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/watermarks/unset",
                parameters: parameters,
                completion: completion)
    }


    public class youtube_v3infocardsParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?, `videoId`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
            self.`videoId` = `videoId`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func youtube_v3_infocards (
        request: InfoCards,
        parameters: youtube_v3infocardsParameters,
        completion: @escaping (InfoCards?, Error?) -> ()) throws {
            try perform(
                method: "POST",
                path: "youtube/v3/infocards",
                request: request,
                parameters: parameters,
                completion: completion)
    }


    public class youtube_v3_infocardslistParameters: Parameterizable {
        public init (`onBehalfOfContentOwner`: String?, `part`: String?, `videoId`: String?) {
            self.`onBehalfOfContentOwner` = `onBehalfOfContentOwner`
            self.`part` = `part`
            self.`videoId` = `videoId`
        }

        public var `onBehalfOfContentOwner`: String?
        public var `part`: String?
        public var `videoId`: String?

        public func queryParameters() -> [String] {
            ["onBehalfOfContentOwner","part","videoId"]
        }
        public func pathParameters() -> [String] {
            []
        }
    }

    public func youtube_v3_infocards_list (
        parameters: youtube_v3_infocardslistParameters,
        completion: @escaping (InfocardListResponse?, Error?) -> ()) throws {
            try perform(
                method: "GET",
                path: "youtube/v3/infocards",
                parameters: parameters,
                completion: completion)
    }


}
