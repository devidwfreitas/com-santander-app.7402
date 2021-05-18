.class Lisk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lise;


# direct methods
.method constructor <init>(Lise;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lisk;->a:Lise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 465
    const-string v0, "Outros_Geolocalizacao_TentouEnviarGeo"

    const-string v1, "Sucesso"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method
