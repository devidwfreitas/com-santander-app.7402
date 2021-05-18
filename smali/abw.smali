.class public Labw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0xea60


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 86
    invoke-virtual {v0, p1}, Lir;->a(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lim;->GET:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 88
    const v1, 0xea60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Integer;)V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {v0, p2}, Lir;->a(Lorg/json/JSONObject;)V

    .line 92
    :cond_0
    invoke-virtual {v0, p3}, Lir;->a(Ljava/lang/Boolean;)V

    .line 94
    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lir;->a(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lim;->POST:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 58
    const v1, 0xea60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Integer;)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {v0, p2}, Lir;->a(Lorg/json/JSONObject;)V

    .line 62
    :cond_0
    invoke-virtual {v0, p3}, Lir;->a(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0, p4}, Lir;->a(Ljava/lang/Boolean;)V

    .line 65
    return-object v0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 71
    invoke-virtual {v0, p1}, Lir;->a(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lim;->PUT:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 73
    const v1, 0xea60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Integer;)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {v0, p2}, Lir;->a(Lorg/json/JSONObject;)V

    .line 77
    :cond_0
    invoke-virtual {v0, p3}, Lir;->a(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0, p4}, Lir;->a(Ljava/lang/Boolean;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Labw;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Labw;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gw-app-key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    invoke-virtual {v1}, Lje;->a()Lio;

    move-result-object v1

    invoke-virtual {v1}, Lio;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Labw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Labw;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lir;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    const-string v1, "system"

    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    invoke-virtual {v2}, Lje;->a()Lio;

    move-result-object v2

    invoke-virtual {v2}, Lio;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    return-object v0
.end method
