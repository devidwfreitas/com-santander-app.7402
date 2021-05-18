.class final Lgod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 355
    return-object p1
.end method
