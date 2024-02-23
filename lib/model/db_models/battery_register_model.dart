class Battery{
  final int id;
  final String batteryId; //title
  final String brand; 
  final String model; 
  final String startDate; //createdAt
  final String? endDate; //updatedAt

  Battery({
    required this.id,
    required this.batteryId,
    required this.brand,
    required this.model,
    required this.startDate,
    required this.endDate,
  });

  factory Battery.fromSqfliteDatabase(Map<String, dynamic> map) => Battery(
  id: map["id"]?.toInt() ?? 0, 
  batteryId: map["batteryId"] ?? "",
  brand: map["brand"] ?? "", 
  model: map["model"] ?? "", 
  startDate: DateTime.fromMillisecondsSinceEpoch(map["startDate"]).toIso8601String(), 
  endDate: map["endDate"] == null
  ? null
  :DateTime.fromMillisecondsSinceEpoch(map["endtDate"]).toIso8601String(),
  );
}