import 'dart:convert';

ClientModel clientModelFromJson(String str) =>
    ClientModel.fromJson(json.decode(str));

String clientModelToJson(ClientModel data) => json.encode(data.toJson());

class ClientModel {
  ClientModel({
    this.clients,
  });

  List<Client>? clients;

  factory ClientModel.fromJson(Map<String, dynamic> json) => ClientModel(
        clients:
            List<Client>.from(json["clients"].map((x) => Client.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "clients": List<dynamic>.from(clients!.map((x) => x.toJson())),
      };
}

class Client {
  Client({
    this.name,
    this.id,
    this.company,
    this.orderId,
    this.invoicepaid,
    this.invoicePending,
  });

  String? name;
  String? id;
  String? company;
  String? orderId;
  String? invoicepaid;
  String? invoicePending;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        name: json["name"],
        id: json["id"],
        company: json["company"],
        orderId: json["orderId"],
        invoicepaid: json["invoicepaid"],
        invoicePending: json["invoicePending"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "company": company,
        "orderId": orderId,
        "invoicepaid": invoicepaid,
        "invoicePending": invoicePending,
      };
}
