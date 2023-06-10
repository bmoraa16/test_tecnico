// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'json_gen/pokemon_details.g.dart';

@JsonSerializable()
class PokemonDetails {
  List<Abilities>? abilities;
  int? baseExperience;
  List<Forms>? forms;
  List<GameIndices>? gameIndices;
  int? height;
  List<HeldItems>? heldItems;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<Moves>? moves;
  String? name;
  int? order;
  List<PastTypes>? pastTypes;
  Ability? species;
  Sprites? sprites;
  List<Stats>? stats;
  List<Types>? types;
  int? weight;

  PokemonDetails({
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDetailsToJson(this);
}

@JsonSerializable()
class Abilities {
  Ability? ability;
  bool? isHidden;
  int? slot;

  Abilities({this.ability, this.isHidden, this.slot});

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);

  Map<String, dynamic> toJson() => _$AbilitiesToJson(this);
}

@JsonSerializable()
class Ability {
  String? name;
  String? url;

  Ability({this.name, this.url});

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}

@JsonSerializable()
class Forms {
  String? name;
  String? url;

  Forms({this.name, this.url});

  factory Forms.fromJson(Map<String, dynamic> json) => _$FormsFromJson(json);

  Map<String, dynamic> toJson() => _$FormsToJson(this);
}

@JsonSerializable()
class GameIndices {
  int? gameIndex;
  Ability? version;

  GameIndices({this.gameIndex, this.version});

  factory GameIndices.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesFromJson(json);

  Map<String, dynamic> toJson() => _$GameIndicesToJson(this);
}

@JsonSerializable()
class HeldItems {
  Ability? item;
  List<VersionDetails>? versionDetails;

  HeldItems({this.item, this.versionDetails});

  factory HeldItems.fromJson(Map<String, dynamic> json) =>
      _$HeldItemsFromJson(json);

  Map<String, dynamic> toJson() => _$HeldItemsToJson(this);
}

@JsonSerializable()
class VersionDetails {
  int? rarity;
  Ability? version;

  VersionDetails({this.rarity, this.version});

  factory VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$VersionDetailsToJson(this);
}

@JsonSerializable()
class Moves {
  Ability? move;
  List<VersionGroupDetails>? versionGroupDetails;

  Moves({this.move, this.versionGroupDetails});

  factory Moves.fromJson(Map<String, dynamic> json) => _$MovesFromJson(json);

  Map<String, dynamic> toJson() => _$MovesToJson(this);
}

@JsonSerializable()
class VersionGroupDetails {
  int? levelLearnedAt;
  Ability? moveLearnMethod;
  Ability? versionGroup;

  VersionGroupDetails({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$VersionGroupDetailsToJson(this);
}

@JsonSerializable()
class PastTypes {
  Ability? generation;
  List<Types>? types;

  PastTypes({this.generation, this.types});

  factory PastTypes.fromJson(Map<String, dynamic> json) =>
      _$PastTypesFromJson(json);

  Map<String, dynamic> toJson() => _$PastTypesToJson(this);
}

@JsonSerializable()
class Types {
  int? slot;
  Ability? type;

  Types({this.slot, this.type});

  factory Types.fromJson(Map<String, dynamic> json) => _$TypesFromJson(json);

  Map<String, dynamic> toJson() => _$TypesToJson(this);
}

@JsonSerializable()
class Sprites {
  String backDefault;
  String? backFemale;
  String backShiny;
  String? backShinyFemale;
  String frontDefault;
  String? frontFemale;
  String frontShiny;
  String? frontShinyFemale;
  Other? other;
  Versions? versions;

  Sprites({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);

  Map<String, dynamic> toJson() => _$SpritesToJson(this);
}

@JsonSerializable()
class Other {
  DreamWorld? dreamWorld;
  Home? home;
  OfficialArtwork? officialArtwork;

  Other({this.dreamWorld, this.home, this.officialArtwork});

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);

  Map<String, dynamic> toJson() => _$OtherToJson(this);
}

@JsonSerializable()
class DreamWorld {
  String? frontDefault;
  String? frontFemale;

  DreamWorld({this.frontDefault, this.frontFemale});

  factory DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldFromJson(json);

  Map<String, dynamic> toJson() => _$DreamWorldToJson(this);
}

@JsonSerializable()
class Home {
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  Home({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}

@JsonSerializable()
class OfficialArtwork {
  String? frontDefault;
  String? frontShiny;

  OfficialArtwork({this.frontDefault, this.frontShiny});

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);

  Map<String, dynamic> toJson() => _$OfficialArtworkToJson(this);
}

@JsonSerializable()
class Versions {
  GenerationI? generationI;
  GenerationIi? generationIi;
  GenerationIii? generationIii;
  GenerationIv? generationIv;
  GenerationV? generationV;
  GenerationVi? generationVi;
  GenerationVii? generationVii;
  GenerationViii? generationViii;

  Versions({
    this.generationI,
    this.generationIi,
    this.generationIii,
    this.generationIv,
    this.generationV,
    this.generationVi,
    this.generationVii,
    this.generationViii,
  });

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);

  Map<String, dynamic> toJson() => _$VersionsToJson(this);
}

@JsonSerializable()
class GenerationI {
  RedBlue? redBlue;
  RedBlue? yellow;

  GenerationI({this.redBlue, this.yellow});

  factory GenerationI.fromJson(Map<String, dynamic> json) =>
      _$GenerationIFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIToJson(this);
}

@JsonSerializable()
class RedBlue {
  String? backDefault;
  String? backGray;
  String? backTransparent;
  String? frontDefault;
  String? frontGray;
  String? frontTransparent;

  RedBlue({
    this.backDefault,
    this.backGray,
    this.backTransparent,
    this.frontDefault,
    this.frontGray,
    this.frontTransparent,
  });

  factory RedBlue.fromJson(Map<String, dynamic> json) =>
      _$RedBlueFromJson(json);

  Map<String, dynamic> toJson() => _$RedBlueToJson(this);
}

@JsonSerializable()
class GenerationIi {
  Crystal? crystal;
  Gold? gold;
  Gold? silver;

  GenerationIi({this.crystal, this.gold, this.silver});

  factory GenerationIi.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIiToJson(this);
}

@JsonSerializable()
class Crystal {
  String? backDefault;
  String? backShiny;
  String? backShinyTransparent;
  String? backTransparent;
  String? frontDefault;
  String? frontShiny;
  String? frontShinyTransparent;
  String? frontTransparent;

  Crystal({
    this.backDefault,
    this.backShiny,
    this.backShinyTransparent,
    this.backTransparent,
    this.frontDefault,
    this.frontShiny,
    this.frontShinyTransparent,
    this.frontTransparent,
  });

  factory Crystal.fromJson(Map<String, dynamic> json) =>
      _$CrystalFromJson(json);

  Map<String, dynamic> toJson() => _$CrystalToJson(this);
}

@JsonSerializable()
class Gold {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;
  String? frontTransparent;

  Gold({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
    this.frontTransparent,
  });

  factory Gold.fromJson(Map<String, dynamic> json) => _$GoldFromJson(json);

  Map<String, dynamic> toJson() => _$GoldToJson(this);
}

@JsonSerializable()
class GenerationIii {
  OfficialArtwork? emerald;
  FireredLeafgreen? fireredLeafgreen;
  FireredLeafgreen? rubySapphire;

  GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

  factory GenerationIii.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIiiToJson(this);
}

@JsonSerializable()
class FireredLeafgreen {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  FireredLeafgreen({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  factory FireredLeafgreen.fromJson(Map<String, dynamic> json) =>
      _$FireredLeafgreenFromJson(json);

  Map<String, dynamic> toJson() => _$FireredLeafgreenToJson(this);
}

@JsonSerializable()
class GenerationIv {
  DiamondPearl? diamondPearl;
  DiamondPearl? heartgoldSoulsilver;
  DiamondPearl? platinum;

  GenerationIv({this.diamondPearl, this.heartgoldSoulsilver, this.platinum});

  factory GenerationIv.fromJson(Map<String, dynamic> json) =>
      _$GenerationIvFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIvToJson(this);
}

@JsonSerializable()
class DiamondPearl {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  DiamondPearl({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory DiamondPearl.fromJson(Map<String, dynamic> json) =>
      _$DiamondPearlFromJson(json);

  Map<String, dynamic> toJson() => _$DiamondPearlToJson(this);
}

@JsonSerializable()
class GenerationV {
  BlackWhite? blackWhite;

  GenerationV({this.blackWhite});

  factory GenerationV.fromJson(Map<String, dynamic> json) =>
      _$GenerationVFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationVToJson(this);
}

@JsonSerializable()
class BlackWhite {
  DiamondPearl? animated;
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  BlackWhite({
    this.animated,
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory BlackWhite.fromJson(Map<String, dynamic> json) =>
      _$BlackWhiteFromJson(json);

  Map<String, dynamic> toJson() => _$BlackWhiteToJson(this);
}

@JsonSerializable()
class GenerationVi {
  Home? omegarubyAlphasapphire;
  Home? xY;

  GenerationVi({this.omegarubyAlphasapphire, this.xY});

  factory GenerationVi.fromJson(Map<String, dynamic> json) =>
      _$GenerationViFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationViToJson(this);
}

@JsonSerializable()
class GenerationVii {
  DreamWorld? icons;
  Home? ultraSunUltraMoon;

  GenerationVii({this.icons, this.ultraSunUltraMoon});

  factory GenerationVii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationViiToJson(this);
}

@JsonSerializable()
class GenerationViii {
  DreamWorld? icons;

  GenerationViii({this.icons});

  factory GenerationViii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationViiiToJson(this);
}

@JsonSerializable()
class Stats {
  int? baseStat;
  int? effort;
  Ability? stat;

  Stats({this.baseStat, this.effort, this.stat});

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}
