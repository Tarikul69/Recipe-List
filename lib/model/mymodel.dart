// To parse this JSON data, do
//
//     final mymodel = mymodelFromJson(jsonString);

import 'dart:convert';

List< Mymodel> mymodelFromJson(String str) => List<Mymodel>.from(json.decode(str));

String mymodelToJson(Mymodel data) => json.encode(data.toJson());

class Mymodel {
    int count;
    List<Result> results;

    Mymodel({
        required this.count,
        required this.results,
    });

    factory Mymodel.fromJson(Map<String, dynamic> json) => Mymodel(
        count: json["count"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    bool isOneTop;
    int? cookTimeMinutes;
    Promotion promotion;
    String keywords;
    Show show;
    ServingsNounPlural servingsNounPlural;
    String canonicalId;
    int showId;
    DraftStatus draftStatus;
    List<Section> sections;
    List<Tag> tags;
    String thumbnailAltText;
    List<Brand> credits;
    List<Topic> topics;
    String slug;
    String servingsNounSingular;
    String? videoUrl;
    int? prepTimeMinutes;
    String name;
    dynamic buzzId;
    String thumbnailUrl;
    bool isShoppable;
    int? videoId;
    List<Compilation> compilations;
    int numServings;
    Brand? brand;
    Nutrition nutrition;
    bool tipsAndRatingsEnabled;
    String? videoAdContent;
    String seoTitle;
    Country country;
    List<Instruction> instructions;
    Language language;
    int? brandId;
    AspectRatio aspectRatio;
    String description;
    dynamic inspiredByUrl;
    int? totalTimeMinutes;
    NutritionVisibility nutritionVisibility;
    List<dynamic> facebookPosts;
    String? beautyUrl;
    TotalTimeTier totalTimeTier;
    String yields;
    String? originalVideoUrl;
    int updatedAt;
    List<Rendition> renditions;
    int createdAt;
    int approvedAt;
    UserRatings userRatings;
    int id;

    Result({
        required this.isOneTop,
        required this.cookTimeMinutes,
        required this.promotion,
        required this.keywords,
        required this.show,
        required this.servingsNounPlural,
        required this.canonicalId,
        required this.showId,
        required this.draftStatus,
        required this.sections,
        required this.tags,
        required this.thumbnailAltText,
        required this.credits,
        required this.topics,
        required this.slug,
        required this.servingsNounSingular,
        required this.videoUrl,
        required this.prepTimeMinutes,
        required this.name,
        required this.buzzId,
        required this.thumbnailUrl,
        required this.isShoppable,
        required this.videoId,
        required this.compilations,
        required this.numServings,
        required this.brand,
        required this.nutrition,
        required this.tipsAndRatingsEnabled,
        required this.videoAdContent,
        required this.seoTitle,
        required this.country,
        required this.instructions,
        required this.language,
        required this.brandId,
        required this.aspectRatio,
        required this.description,
        required this.inspiredByUrl,
        required this.totalTimeMinutes,
        required this.nutritionVisibility,
        required this.facebookPosts,
        required this.beautyUrl,
        required this.totalTimeTier,
        required this.yields,
        required this.originalVideoUrl,
        required this.updatedAt,
        required this.renditions,
        required this.createdAt,
        required this.approvedAt,
        required this.userRatings,
        required this.id,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        isOneTop: json["is_one_top"],
        cookTimeMinutes: json["cook_time_minutes"],
        promotion: promotionValues.map[json["promotion"]]!,
        keywords: json["keywords"],
        show: Show.fromJson(json["show"]),
        servingsNounPlural: servingsNounPluralValues.map[json["servings_noun_plural"]]!,
        canonicalId: json["canonical_id"],
        showId: json["show_id"],
        draftStatus: draftStatusValues.map[json["draft_status"]]!,
        sections: List<Section>.from(json["sections"].map((x) => Section.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        thumbnailAltText: json["thumbnail_alt_text"],
        credits: List<Brand>.from(json["credits"].map((x) => Brand.fromJson(x))),
        topics: List<Topic>.from(json["topics"].map((x) => Topic.fromJson(x))),
        slug: json["slug"],
        servingsNounSingular: json["servings_noun_singular"],
        videoUrl: json["video_url"],
        prepTimeMinutes: json["prep_time_minutes"],
        name: json["name"],
        buzzId: json["buzz_id"],
        thumbnailUrl: json["thumbnail_url"],
        isShoppable: json["is_shoppable"],
        videoId: json["video_id"],
        compilations: List<Compilation>.from(json["compilations"].map((x) => Compilation.fromJson(x))),
        numServings: json["num_servings"],
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        nutrition: Nutrition.fromJson(json["nutrition"]),
        tipsAndRatingsEnabled: json["tips_and_ratings_enabled"],
        videoAdContent: json["video_ad_content"],
        seoTitle: json["seo_title"],
        country: countryValues.map[json["country"]]!,
        instructions: List<Instruction>.from(json["instructions"].map((x) => Instruction.fromJson(x))),
        language: languageValues.map[json["language"]]!,
        brandId: json["brand_id"],
        aspectRatio: aspectRatioValues.map[json["aspect_ratio"]]!,
        description: json["description"],
        inspiredByUrl: json["inspired_by_url"],
        totalTimeMinutes: json["total_time_minutes"],
        nutritionVisibility: nutritionVisibilityValues.map[json["nutrition_visibility"]]!,
        facebookPosts: List<dynamic>.from(json["facebook_posts"].map((x) => x)),
        beautyUrl: json["beauty_url"],
        totalTimeTier: TotalTimeTier.fromJson(json["total_time_tier"]),
        yields: json["yields"],
        originalVideoUrl: json["original_video_url"],
        updatedAt: json["updated_at"],
        renditions: List<Rendition>.from(json["renditions"].map((x) => Rendition.fromJson(x))),
        createdAt: json["created_at"],
        approvedAt: json["approved_at"],
        userRatings: UserRatings.fromJson(json["user_ratings"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "is_one_top": isOneTop,
        "cook_time_minutes": cookTimeMinutes,
        "promotion": promotionValues.reverse[promotion],
        "keywords": keywords,
        "show": show.toJson(),
        "servings_noun_plural": servingsNounPluralValues.reverse[servingsNounPlural],
        "canonical_id": canonicalId,
        "show_id": showId,
        "draft_status": draftStatusValues.reverse[draftStatus],
        "sections": List<dynamic>.from(sections.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "thumbnail_alt_text": thumbnailAltText,
        "credits": List<dynamic>.from(credits.map((x) => x.toJson())),
        "topics": List<dynamic>.from(topics.map((x) => x.toJson())),
        "slug": slug,
        "servings_noun_singular": servingsNounSingular,
        "video_url": videoUrl,
        "prep_time_minutes": prepTimeMinutes,
        "name": name,
        "buzz_id": buzzId,
        "thumbnail_url": thumbnailUrl,
        "is_shoppable": isShoppable,
        "video_id": videoId,
        "compilations": List<dynamic>.from(compilations.map((x) => x.toJson())),
        "num_servings": numServings,
        "brand": brand?.toJson(),
        "nutrition": nutrition.toJson(),
        "tips_and_ratings_enabled": tipsAndRatingsEnabled,
        "video_ad_content": videoAdContent,
        "seo_title": seoTitle,
        "country": countryValues.reverse[country],
        "instructions": List<dynamic>.from(instructions.map((x) => x.toJson())),
        "language": languageValues.reverse[language],
        "brand_id": brandId,
        "aspect_ratio": aspectRatioValues.reverse[aspectRatio],
        "description": description,
        "inspired_by_url": inspiredByUrl,
        "total_time_minutes": totalTimeMinutes,
        "nutrition_visibility": nutritionVisibilityValues.reverse[nutritionVisibility],
        "facebook_posts": List<dynamic>.from(facebookPosts.map((x) => x)),
        "beauty_url": beautyUrl,
        "total_time_tier": totalTimeTier.toJson(),
        "yields": yields,
        "original_video_url": originalVideoUrl,
        "updated_at": updatedAt,
        "renditions": List<dynamic>.from(renditions.map((x) => x.toJson())),
        "created_at": createdAt,
        "approved_at": approvedAt,
        "user_ratings": userRatings.toJson(),
        "id": id,
    };
}

enum AspectRatio {
    THE_11,
    THE_169
}

final aspectRatioValues = EnumValues({
    "1:1": AspectRatio.THE_11,
    "16:9": AspectRatio.THE_169
});

class Brand {
    String? imageUrl;
    String? name;
    int? id;
    String? slug;
    BrandType? type;

    Brand({
        this.imageUrl,
        required this.name,
        this.id,
        this.slug,
        this.type,
    });

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        imageUrl: json["image_url"],
        name: json["name"],
        id: json["id"],
        slug: json["slug"],
        type: brandTypeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "name": name,
        "id": id,
        "slug": slug,
        "type": brandTypeValues.reverse[type],
    };
}

enum BrandType {
    BRAND,
    COMMUNITY,
    INTERNAL
}

final brandTypeValues = EnumValues({
    "brand": BrandType.BRAND,
    "community": BrandType.COMMUNITY,
    "internal": BrandType.INTERNAL
});

class Compilation {
    List<dynamic> facebookPosts;
    String canonicalId;
    int id;
    AspectRatio aspectRatio;
    dynamic keywords;
    int createdAt;
    Language language;
    String videoUrl;
    dynamic buzzId;
    int videoId;
    List<Show> show;
    String name;
    dynamic beautyUrl;
    String slug;
    Promotion promotion;
    Country country;
    bool isShoppable;
    dynamic description;
    DraftStatus draftStatus;
    String thumbnailUrl;
    String thumbnailAltText;
    int approvedAt;

    Compilation({
        required this.facebookPosts,
        required this.canonicalId,
        required this.id,
        required this.aspectRatio,
        required this.keywords,
        required this.createdAt,
        required this.language,
        required this.videoUrl,
        required this.buzzId,
        required this.videoId,
        required this.show,
        required this.name,
        required this.beautyUrl,
        required this.slug,
        required this.promotion,
        required this.country,
        required this.isShoppable,
        required this.description,
        required this.draftStatus,
        required this.thumbnailUrl,
        required this.thumbnailAltText,
        required this.approvedAt,
    });

    factory Compilation.fromJson(Map<String, dynamic> json) => Compilation(
        facebookPosts: List<dynamic>.from(json["facebook_posts"].map((x) => x)),
        canonicalId: json["canonical_id"],
        id: json["id"],
        aspectRatio: aspectRatioValues.map[json["aspect_ratio"]]!,
        keywords: json["keywords"],
        createdAt: json["created_at"],
        language: languageValues.map[json["language"]]!,
        videoUrl: json["video_url"],
        buzzId: json["buzz_id"],
        videoId: json["video_id"],
        show: List<Show>.from(json["show"].map((x) => Show.fromJson(x))),
        name: json["name"],
        beautyUrl: json["beauty_url"],
        slug: json["slug"],
        promotion: promotionValues.map[json["promotion"]]!,
        country: countryValues.map[json["country"]]!,
        isShoppable: json["is_shoppable"],
        description: json["description"],
        draftStatus: draftStatusValues.map[json["draft_status"]]!,
        thumbnailUrl: json["thumbnail_url"],
        thumbnailAltText: json["thumbnail_alt_text"],
        approvedAt: json["approved_at"],
    );

    Map<String, dynamic> toJson() => {
        "facebook_posts": List<dynamic>.from(facebookPosts.map((x) => x)),
        "canonical_id": canonicalId,
        "id": id,
        "aspect_ratio": aspectRatioValues.reverse[aspectRatio],
        "keywords": keywords,
        "created_at": createdAt,
        "language": languageValues.reverse[language],
        "video_url": videoUrl,
        "buzz_id": buzzId,
        "video_id": videoId,
        "show": List<dynamic>.from(show.map((x) => x.toJson())),
        "name": name,
        "beauty_url": beautyUrl,
        "slug": slug,
        "promotion": promotionValues.reverse[promotion],
        "country": countryValues.reverse[country],
        "is_shoppable": isShoppable,
        "description": description,
        "draft_status": draftStatusValues.reverse[draftStatus],
        "thumbnail_url": thumbnailUrl,
        "thumbnail_alt_text": thumbnailAltText,
        "approved_at": approvedAt,
    };
}

enum Country {
    US
}

final countryValues = EnumValues({
    "US": Country.US
});

enum DraftStatus {
    PUBLISHED
}

final draftStatusValues = EnumValues({
    "published": DraftStatus.PUBLISHED
});

enum Language {
    ENG
}

final languageValues = EnumValues({
    "eng": Language.ENG
});

enum Promotion {
    FULL
}

final promotionValues = EnumValues({
    "full": Promotion.FULL
});

class Show {
    Name name;
    int id;

    Show({
        required this.name,
        required this.id,
    });

    factory Show.fromJson(Map<String, dynamic> json) => Show(
        name: nameValues.map[json["name"]]!,
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "id": id,
    };
}

enum Name {
    TASTY,
    TASTY_101
}

final nameValues = EnumValues({
    "Tasty": Name.TASTY,
    "Tasty 101": Name.TASTY_101
});

class Instruction {
    int startTime;
    String? appliance;
    int endTime;
    int? temperature;
    int id;
    int position;
    String displayText;

    Instruction({
        required this.startTime,
        required this.appliance,
        required this.endTime,
        required this.temperature,
        required this.id,
        required this.position,
        required this.displayText,
    });

    factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        startTime: json["start_time"],
        appliance: json["appliance"],
        endTime: json["end_time"],
        temperature: json["temperature"],
        id: json["id"],
        position: json["position"],
        displayText: json["display_text"],
    );

    Map<String, dynamic> toJson() => {
        "start_time": startTime,
        "appliance": appliance,
        "end_time": endTime,
        "temperature": temperature,
        "id": id,
        "position": position,
        "display_text": displayText,
    };
}

class Nutrition {
    int? carbohydrates;
    int? fiber;
    DateTime? updatedAt;
    int? protein;
    int? fat;
    int? calories;
    int? sugar;

    Nutrition({
        this.carbohydrates,
        this.fiber,
        this.updatedAt,
        this.protein,
        this.fat,
        this.calories,
        this.sugar,
    });

    factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
        carbohydrates: json["carbohydrates"],
        fiber: json["fiber"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        protein: json["protein"],
        fat: json["fat"],
        calories: json["calories"],
        sugar: json["sugar"],
    );

    Map<String, dynamic> toJson() => {
        "carbohydrates": carbohydrates,
        "fiber": fiber,
        "updated_at": updatedAt?.toIso8601String(),
        "protein": protein,
        "fat": fat,
        "calories": calories,
        "sugar": sugar,
    };
}

enum NutritionVisibility {
    AUTO
}

final nutritionVisibilityValues = EnumValues({
    "auto": NutritionVisibility.AUTO
});

class Rendition {
    Container container;
    String url;
    int duration;
    int? bitRate;
    int width;
    int height;
    String posterUrl;
    int? fileSize;
    ContentType contentType;
    Aspect aspect;
    int? minimumBitRate;
    String name;
    int? maximumBitRate;

    Rendition({
        required this.container,
        required this.url,
        required this.duration,
        required this.bitRate,
        required this.width,
        required this.height,
        required this.posterUrl,
        required this.fileSize,
        required this.contentType,
        required this.aspect,
        required this.minimumBitRate,
        required this.name,
        required this.maximumBitRate,
    });

    factory Rendition.fromJson(Map<String, dynamic> json) => Rendition(
        container: containerValues.map[json["container"]]!,
        url: json["url"],
        duration: json["duration"],
        bitRate: json["bit_rate"],
        width: json["width"],
        height: json["height"],
        posterUrl: json["poster_url"],
        fileSize: json["file_size"],
        contentType: contentTypeValues.map[json["content_type"]]!,
        aspect: aspectValues.map[json["aspect"]]!,
        minimumBitRate: json["minimum_bit_rate"],
        name: json["name"],
        maximumBitRate: json["maximum_bit_rate"],
    );

    Map<String, dynamic> toJson() => {
        "container": containerValues.reverse[container],
        "url": url,
        "duration": duration,
        "bit_rate": bitRate,
        "width": width,
        "height": height,
        "poster_url": posterUrl,
        "file_size": fileSize,
        "content_type": contentTypeValues.reverse[contentType],
        "aspect": aspectValues.reverse[aspect],
        "minimum_bit_rate": minimumBitRate,
        "name": name,
        "maximum_bit_rate": maximumBitRate,
    };
}

enum Aspect {
    LANDSCAPE,
    SQUARE
}

final aspectValues = EnumValues({
    "landscape": Aspect.LANDSCAPE,
    "square": Aspect.SQUARE
});

enum Container {
    MP4,
    TS
}

final containerValues = EnumValues({
    "mp4": Container.MP4,
    "ts": Container.TS
});

enum ContentType {
    APPLICATION_VND_APPLE_MPEGURL,
    VIDEO_MP4
}

final contentTypeValues = EnumValues({
    "application/vnd.apple.mpegurl": ContentType.APPLICATION_VND_APPLE_MPEGURL,
    "video/mp4": ContentType.VIDEO_MP4
});

class Section {
    int position;
    List<Component> components;
    String? name;

    Section({
        required this.position,
        required this.components,
        required this.name,
    });

    factory Section.fromJson(Map<String, dynamic> json) => Section(
        position: json["position"],
        components: List<Component>.from(json["components"].map((x) => Component.fromJson(x))),
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "position": position,
        "components": List<dynamic>.from(components.map((x) => x.toJson())),
        "name": name,
    };
}

class Component {
    String rawText;
    String extraComment;
    Ingredient ingredient;
    int id;
    int position;
    List<Measurement> measurements;

    Component({
        required this.rawText,
        required this.extraComment,
        required this.ingredient,
        required this.id,
        required this.position,
        required this.measurements,
    });

    factory Component.fromJson(Map<String, dynamic> json) => Component(
        rawText: json["raw_text"],
        extraComment: json["extra_comment"],
        ingredient: Ingredient.fromJson(json["ingredient"]),
        id: json["id"],
        position: json["position"],
        measurements: List<Measurement>.from(json["measurements"].map((x) => Measurement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "raw_text": rawText,
        "extra_comment": extraComment,
        "ingredient": ingredient.toJson(),
        "id": id,
        "position": position,
        "measurements": List<dynamic>.from(measurements.map((x) => x.toJson())),
    };
}

class Ingredient {
    String displayPlural;
    int id;
    String displaySingular;
    int updatedAt;
    String name;
    int createdAt;

    Ingredient({
        required this.displayPlural,
        required this.id,
        required this.displaySingular,
        required this.updatedAt,
        required this.name,
        required this.createdAt,
    });

    factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        displayPlural: json["display_plural"],
        id: json["id"],
        displaySingular: json["display_singular"],
        updatedAt: json["updated_at"],
        name: json["name"],
        createdAt: json["created_at"],
    );

    Map<String, dynamic> toJson() => {
        "display_plural": displayPlural,
        "id": id,
        "display_singular": displaySingular,
        "updated_at": updatedAt,
        "name": name,
        "created_at": createdAt,
    };
}

class Measurement {
    Unit unit;
    String quantity;
    int id;

    Measurement({
        required this.unit,
        required this.quantity,
        required this.id,
    });

    factory Measurement.fromJson(Map<String, dynamic> json) => Measurement(
        unit: Unit.fromJson(json["unit"]),
        quantity: json["quantity"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "unit": unit.toJson(),
        "quantity": quantity,
        "id": id,
    };
}

class Unit {
    String name;
    String displayPlural;
    String displaySingular;
    String abbreviation;
    System system;

    Unit({
        required this.name,
        required this.displayPlural,
        required this.displaySingular,
        required this.abbreviation,
        required this.system,
    });

    factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        name: json["name"],
        displayPlural: json["display_plural"],
        displaySingular: json["display_singular"],
        abbreviation: json["abbreviation"],
        system: systemValues.map[json["system"]]!,
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "display_plural": displayPlural,
        "display_singular": displaySingular,
        "abbreviation": abbreviation,
        "system": systemValues.reverse[system],
    };
}

enum System {
    IMPERIAL,
    METRIC,
    NONE
}

final systemValues = EnumValues({
    "imperial": System.IMPERIAL,
    "metric": System.METRIC,
    "none": System.NONE
});

enum ServingsNounPlural {
    MINI_CHEESECAKES,
    ROLLS,
    SANDWICHES,
    SERVINGS
}

final servingsNounPluralValues = EnumValues({
    "mini cheesecakes": ServingsNounPlural.MINI_CHEESECAKES,
    "rolls": ServingsNounPlural.ROLLS,
    "sandwiches": ServingsNounPlural.SANDWICHES,
    "servings": ServingsNounPlural.SERVINGS
});

class Tag {
    String name;
    int id;
    String displayName;
    TagType type;

    Tag({
        required this.name,
        required this.id,
        required this.displayName,
        required this.type,
    });

    factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
        id: json["id"],
        displayName: json["display_name"],
        type: tagTypeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "display_name": displayName,
        "type": tagTypeValues.reverse[type],
    };
}

enum TagType {
    APPLIANCE,
    CUISINE,
    DIETARY,
    DIFFICULTY,
    DISH_STYLE,
    EQUIPMENT,
    FEATURE_PAGE,
    HOLIDAY,
    MEAL,
    METHOD,
    OCCASION,
    SEASONAL
}

final tagTypeValues = EnumValues({
    "appliance": TagType.APPLIANCE,
    "cuisine": TagType.CUISINE,
    "dietary": TagType.DIETARY,
    "difficulty": TagType.DIFFICULTY,
    "dish_style": TagType.DISH_STYLE,
    "equipment": TagType.EQUIPMENT,
    "feature_page": TagType.FEATURE_PAGE,
    "holiday": TagType.HOLIDAY,
    "meal": TagType.MEAL,
    "method": TagType.METHOD,
    "occasion": TagType.OCCASION,
    "seasonal": TagType.SEASONAL
});

class Topic {
    String name;
    String slug;

    Topic({
        required this.name,
        required this.slug,
    });

    factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        name: json["name"],
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
    };
}

class TotalTimeTier {
    Tier tier;
    DisplayTier displayTier;

    TotalTimeTier({
        required this.tier,
        required this.displayTier,
    });

    factory TotalTimeTier.fromJson(Map<String, dynamic> json) => TotalTimeTier(
        tier: tierValues.map[json["tier"]]!,
        displayTier: displayTierValues.map[json["display_tier"]]!,
    );

    Map<String, dynamic> toJson() => {
        "tier": tierValues.reverse[tier],
        "display_tier": displayTierValues.reverse[displayTier],
    };
}

enum DisplayTier {
    UNDER_15_MINUTES,
    UNDER_30_MINUTES
}

final displayTierValues = EnumValues({
    "Under 15 minutes": DisplayTier.UNDER_15_MINUTES,
    "Under 30 minutes": DisplayTier.UNDER_30_MINUTES
});

enum Tier {
    UNDER_15_MINUTES,
    UNDER_30_MINUTES
}

final tierValues = EnumValues({
    "under_15_minutes": Tier.UNDER_15_MINUTES,
    "under_30_minutes": Tier.UNDER_30_MINUTES
});

class UserRatings {
    int countNegative;
    int countPositive;
    double? score;

    UserRatings({
        required this.countNegative,
        required this.countPositive,
        required this.score,
    });

    factory UserRatings.fromJson(Map<String, dynamic> json) => UserRatings(
        countNegative: json["count_negative"],
        countPositive: json["count_positive"],
        score: json["score"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "count_negative": countNegative,
        "count_positive": countPositive,
        "score": score,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
