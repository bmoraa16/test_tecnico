// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetails _$PokemonDetailsFromJson(Map<String, dynamic> json) =>
    PokemonDetails(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: json['baseExperience'] as int?,
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => Forms.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['gameIndices'] as List<dynamic>?)
          ?.map((e) => GameIndices.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int?,
      heldItems: (json['heldItems'] as List<dynamic>?)
          ?.map((e) => HeldItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      isDefault: json['isDefault'] as bool?,
      locationAreaEncounters: json['locationAreaEncounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => Moves.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: json['order'] as int?,
      pastTypes: (json['pastTypes'] as List<dynamic>?)
          ?.map((e) => PastTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: json['species'] == null
          ? null
          : Ability.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$PokemonDetailsToJson(PokemonDetails instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'baseExperience': instance.baseExperience,
      'forms': instance.forms,
      'gameIndices': instance.gameIndices,
      'height': instance.height,
      'heldItems': instance.heldItems,
      'id': instance.id,
      'isDefault': instance.isDefault,
      'locationAreaEncounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'pastTypes': instance.pastTypes,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) => Abilities(
      ability: json['ability'] == null
          ? null
          : Ability.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool?,
      slot: json['slot'] as int?,
    );

Map<String, dynamic> _$AbilitiesToJson(Abilities instance) => <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Forms _$FormsFromJson(Map<String, dynamic> json) => Forms(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$FormsToJson(Forms instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

GameIndices _$GameIndicesFromJson(Map<String, dynamic> json) => GameIndices(
      gameIndex: json['gameIndex'] as int?,
      version: json['version'] == null
          ? null
          : Ability.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameIndicesToJson(GameIndices instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version,
    };

HeldItems _$HeldItemsFromJson(Map<String, dynamic> json) => HeldItems(
      item: json['item'] == null
          ? null
          : Ability.fromJson(json['item'] as Map<String, dynamic>),
      versionDetails: (json['versionDetails'] as List<dynamic>?)
          ?.map((e) => VersionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HeldItemsToJson(HeldItems instance) => <String, dynamic>{
      'item': instance.item,
      'versionDetails': instance.versionDetails,
    };

VersionDetails _$VersionDetailsFromJson(Map<String, dynamic> json) =>
    VersionDetails(
      rarity: json['rarity'] as int?,
      version: json['version'] == null
          ? null
          : Ability.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionDetailsToJson(VersionDetails instance) =>
    <String, dynamic>{
      'rarity': instance.rarity,
      'version': instance.version,
    };

Moves _$MovesFromJson(Map<String, dynamic> json) => Moves(
      move: json['move'] == null
          ? null
          : Ability.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['versionGroupDetails'] as List<dynamic>?)
          ?.map((e) => VersionGroupDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovesToJson(Moves instance) => <String, dynamic>{
      'move': instance.move,
      'versionGroupDetails': instance.versionGroupDetails,
    };

VersionGroupDetails _$VersionGroupDetailsFromJson(Map<String, dynamic> json) =>
    VersionGroupDetails(
      levelLearnedAt: json['levelLearnedAt'] as int?,
      moveLearnMethod: json['moveLearnMethod'] == null
          ? null
          : Ability.fromJson(json['moveLearnMethod'] as Map<String, dynamic>),
      versionGroup: json['versionGroup'] == null
          ? null
          : Ability.fromJson(json['versionGroup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionGroupDetailsToJson(
        VersionGroupDetails instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'versionGroup': instance.versionGroup,
    };

PastTypes _$PastTypesFromJson(Map<String, dynamic> json) => PastTypes(
      generation: json['generation'] == null
          ? null
          : Ability.fromJson(json['generation'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PastTypesToJson(PastTypes instance) => <String, dynamic>{
      'generation': instance.generation,
      'types': instance.types,
    };

Types _$TypesFromJson(Map<String, dynamic> json) => Types(
      slot: json['slot'] as int?,
      type: json['type'] == null
          ? null
          : Ability.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypesToJson(Types instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) => Sprites(
      backDefault: json['back_default'] as String,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String,
      frontShinyFemale: json['front_shiny_female'] as String?,
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
      versions: json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'backFemale': instance.backFemale,
      'backShiny': instance.backShiny,
      'backShinyFemale': instance.backShinyFemale,
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
      'other': instance.other,
      'versions': instance.versions,
    };

Other _$OtherFromJson(Map<String, dynamic> json) => Other(
      dreamWorld: json['dreamWorld'] == null
          ? null
          : DreamWorld.fromJson(json['dreamWorld'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : Home.fromJson(json['home'] as Map<String, dynamic>),
      officialArtwork: json['officialArtwork'] == null
          ? null
          : OfficialArtwork.fromJson(
              json['officialArtwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtherToJson(Other instance) => <String, dynamic>{
      'dreamWorld': instance.dreamWorld,
      'home': instance.home,
      'officialArtwork': instance.officialArtwork,
    };

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) => DreamWorld(
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
    );

Map<String, dynamic> _$DreamWorldToJson(DreamWorld instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
    };

Home _$HomeFromJson(Map<String, dynamic> json) => Home(
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyFemale: json['frontShinyFemale'] as String?,
    );

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
    };

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) =>
    OfficialArtwork(
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
    );

Map<String, dynamic> _$OfficialArtworkToJson(OfficialArtwork instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
    };

Versions _$VersionsFromJson(Map<String, dynamic> json) => Versions(
      generationI: json['generationI'] == null
          ? null
          : GenerationI.fromJson(json['generationI'] as Map<String, dynamic>),
      generationIi: json['generationIi'] == null
          ? null
          : GenerationIi.fromJson(json['generationIi'] as Map<String, dynamic>),
      generationIii: json['generationIii'] == null
          ? null
          : GenerationIii.fromJson(
              json['generationIii'] as Map<String, dynamic>),
      generationIv: json['generationIv'] == null
          ? null
          : GenerationIv.fromJson(json['generationIv'] as Map<String, dynamic>),
      generationV: json['generationV'] == null
          ? null
          : GenerationV.fromJson(json['generationV'] as Map<String, dynamic>),
      generationVi: json['generationVi'] == null
          ? null
          : GenerationVi.fromJson(json['generationVi'] as Map<String, dynamic>),
      generationVii: json['generationVii'] == null
          ? null
          : GenerationVii.fromJson(
              json['generationVii'] as Map<String, dynamic>),
      generationViii: json['generationViii'] == null
          ? null
          : GenerationViii.fromJson(
              json['generationViii'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionsToJson(Versions instance) => <String, dynamic>{
      'generationI': instance.generationI,
      'generationIi': instance.generationIi,
      'generationIii': instance.generationIii,
      'generationIv': instance.generationIv,
      'generationV': instance.generationV,
      'generationVi': instance.generationVi,
      'generationVii': instance.generationVii,
      'generationViii': instance.generationViii,
    };

GenerationI _$GenerationIFromJson(Map<String, dynamic> json) => GenerationI(
      redBlue: json['redBlue'] == null
          ? null
          : RedBlue.fromJson(json['redBlue'] as Map<String, dynamic>),
      yellow: json['yellow'] == null
          ? null
          : RedBlue.fromJson(json['yellow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIToJson(GenerationI instance) =>
    <String, dynamic>{
      'redBlue': instance.redBlue,
      'yellow': instance.yellow,
    };

RedBlue _$RedBlueFromJson(Map<String, dynamic> json) => RedBlue(
      backDefault: json['backDefault'] as String?,
      backGray: json['backGray'] as String?,
      backTransparent: json['backTransparent'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontGray: json['frontGray'] as String?,
      frontTransparent: json['frontTransparent'] as String?,
    );

Map<String, dynamic> _$RedBlueToJson(RedBlue instance) => <String, dynamic>{
      'backDefault': instance.backDefault,
      'backGray': instance.backGray,
      'backTransparent': instance.backTransparent,
      'frontDefault': instance.frontDefault,
      'frontGray': instance.frontGray,
      'frontTransparent': instance.frontTransparent,
    };

GenerationIi _$GenerationIiFromJson(Map<String, dynamic> json) => GenerationIi(
      crystal: json['crystal'] == null
          ? null
          : Crystal.fromJson(json['crystal'] as Map<String, dynamic>),
      gold: json['gold'] == null
          ? null
          : Gold.fromJson(json['gold'] as Map<String, dynamic>),
      silver: json['silver'] == null
          ? null
          : Gold.fromJson(json['silver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIiToJson(GenerationIi instance) =>
    <String, dynamic>{
      'crystal': instance.crystal,
      'gold': instance.gold,
      'silver': instance.silver,
    };

Crystal _$CrystalFromJson(Map<String, dynamic> json) => Crystal(
      backDefault: json['backDefault'] as String?,
      backShiny: json['backShiny'] as String?,
      backShinyTransparent: json['backShinyTransparent'] as String?,
      backTransparent: json['backTransparent'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyTransparent: json['frontShinyTransparent'] as String?,
      frontTransparent: json['frontTransparent'] as String?,
    );

Map<String, dynamic> _$CrystalToJson(Crystal instance) => <String, dynamic>{
      'backDefault': instance.backDefault,
      'backShiny': instance.backShiny,
      'backShinyTransparent': instance.backShinyTransparent,
      'backTransparent': instance.backTransparent,
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
      'frontShinyTransparent': instance.frontShinyTransparent,
      'frontTransparent': instance.frontTransparent,
    };

Gold _$GoldFromJson(Map<String, dynamic> json) => Gold(
      backDefault: json['backDefault'] as String?,
      backShiny: json['backShiny'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontTransparent: json['frontTransparent'] as String?,
    );

Map<String, dynamic> _$GoldToJson(Gold instance) => <String, dynamic>{
      'backDefault': instance.backDefault,
      'backShiny': instance.backShiny,
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
      'frontTransparent': instance.frontTransparent,
    };

GenerationIii _$GenerationIiiFromJson(Map<String, dynamic> json) =>
    GenerationIii(
      emerald: json['emerald'] == null
          ? null
          : OfficialArtwork.fromJson(json['emerald'] as Map<String, dynamic>),
      fireredLeafgreen: json['fireredLeafgreen'] == null
          ? null
          : FireredLeafgreen.fromJson(
              json['fireredLeafgreen'] as Map<String, dynamic>),
      rubySapphire: json['rubySapphire'] == null
          ? null
          : FireredLeafgreen.fromJson(
              json['rubySapphire'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIiiToJson(GenerationIii instance) =>
    <String, dynamic>{
      'emerald': instance.emerald,
      'fireredLeafgreen': instance.fireredLeafgreen,
      'rubySapphire': instance.rubySapphire,
    };

FireredLeafgreen _$FireredLeafgreenFromJson(Map<String, dynamic> json) =>
    FireredLeafgreen(
      backDefault: json['backDefault'] as String?,
      backShiny: json['backShiny'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontShiny: json['frontShiny'] as String?,
    );

Map<String, dynamic> _$FireredLeafgreenToJson(FireredLeafgreen instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backShiny': instance.backShiny,
      'frontDefault': instance.frontDefault,
      'frontShiny': instance.frontShiny,
    };

GenerationIv _$GenerationIvFromJson(Map<String, dynamic> json) => GenerationIv(
      diamondPearl: json['diamondPearl'] == null
          ? null
          : DiamondPearl.fromJson(json['diamondPearl'] as Map<String, dynamic>),
      heartgoldSoulsilver: json['heartgoldSoulsilver'] == null
          ? null
          : DiamondPearl.fromJson(
              json['heartgoldSoulsilver'] as Map<String, dynamic>),
      platinum: json['platinum'] == null
          ? null
          : DiamondPearl.fromJson(json['platinum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIvToJson(GenerationIv instance) =>
    <String, dynamic>{
      'diamondPearl': instance.diamondPearl,
      'heartgoldSoulsilver': instance.heartgoldSoulsilver,
      'platinum': instance.platinum,
    };

DiamondPearl _$DiamondPearlFromJson(Map<String, dynamic> json) => DiamondPearl(
      backDefault: json['backDefault'] as String?,
      backFemale: json['backFemale'] as String?,
      backShiny: json['backShiny'] as String?,
      backShinyFemale: json['backShinyFemale'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyFemale: json['frontShinyFemale'] as String?,
    );

Map<String, dynamic> _$DiamondPearlToJson(DiamondPearl instance) =>
    <String, dynamic>{
      'backDefault': instance.backDefault,
      'backFemale': instance.backFemale,
      'backShiny': instance.backShiny,
      'backShinyFemale': instance.backShinyFemale,
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
    };

GenerationV _$GenerationVFromJson(Map<String, dynamic> json) => GenerationV(
      blackWhite: json['blackWhite'] == null
          ? null
          : BlackWhite.fromJson(json['blackWhite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationVToJson(GenerationV instance) =>
    <String, dynamic>{
      'blackWhite': instance.blackWhite,
    };

BlackWhite _$BlackWhiteFromJson(Map<String, dynamic> json) => BlackWhite(
      animated: json['animated'] == null
          ? null
          : DiamondPearl.fromJson(json['animated'] as Map<String, dynamic>),
      backDefault: json['backDefault'] as String?,
      backFemale: json['backFemale'] as String?,
      backShiny: json['backShiny'] as String?,
      backShinyFemale: json['backShinyFemale'] as String?,
      frontDefault: json['frontDefault'] as String?,
      frontFemale: json['frontFemale'] as String?,
      frontShiny: json['frontShiny'] as String?,
      frontShinyFemale: json['frontShinyFemale'] as String?,
    );

Map<String, dynamic> _$BlackWhiteToJson(BlackWhite instance) =>
    <String, dynamic>{
      'animated': instance.animated,
      'backDefault': instance.backDefault,
      'backFemale': instance.backFemale,
      'backShiny': instance.backShiny,
      'backShinyFemale': instance.backShinyFemale,
      'frontDefault': instance.frontDefault,
      'frontFemale': instance.frontFemale,
      'frontShiny': instance.frontShiny,
      'frontShinyFemale': instance.frontShinyFemale,
    };

GenerationVi _$GenerationViFromJson(Map<String, dynamic> json) => GenerationVi(
      omegarubyAlphasapphire: json['omegarubyAlphasapphire'] == null
          ? null
          : Home.fromJson(
              json['omegarubyAlphasapphire'] as Map<String, dynamic>),
      xY: json['xY'] == null
          ? null
          : Home.fromJson(json['xY'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationViToJson(GenerationVi instance) =>
    <String, dynamic>{
      'omegarubyAlphasapphire': instance.omegarubyAlphasapphire,
      'xY': instance.xY,
    };

GenerationVii _$GenerationViiFromJson(Map<String, dynamic> json) =>
    GenerationVii(
      icons: json['icons'] == null
          ? null
          : DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon: json['ultraSunUltraMoon'] == null
          ? null
          : Home.fromJson(json['ultraSunUltraMoon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationViiToJson(GenerationVii instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'ultraSunUltraMoon': instance.ultraSunUltraMoon,
    };

GenerationViii _$GenerationViiiFromJson(Map<String, dynamic> json) =>
    GenerationViii(
      icons: json['icons'] == null
          ? null
          : DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationViiiToJson(GenerationViii instance) =>
    <String, dynamic>{
      'icons': instance.icons,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      baseStat: json['baseStat'] as int?,
      effort: json['effort'] as int?,
      stat: json['stat'] == null
          ? null
          : Ability.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'baseStat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };
