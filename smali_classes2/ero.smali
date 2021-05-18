.class public final Lero;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lero;->g:Ljava/util/regex/Pattern;

    .line 37
    sget-object v0, Lepu;->QR_CODE:Lepu;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lero;->c:Ljava/util/Set;

    .line 38
    sget-object v0, Lepu;->DATA_MATRIX:Lepu;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lero;->d:Ljava/util/Set;

    .line 39
    sget-object v0, Lepu;->AZTEC:Lepu;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lero;->e:Ljava/util/Set;

    .line 40
    sget-object v0, Lepu;->PDF_417:Lepu;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lero;->f:Ljava/util/Set;

    .line 43
    sget-object v0, Lepu;->UPC_A:Lepu;

    const/4 v1, 0x5

    new-array v1, v1, [Lepu;

    const/4 v2, 0x0

    sget-object v3, Lepu;->UPC_E:Lepu;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lepu;->EAN_13:Lepu;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lepu;->EAN_8:Lepu;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lepu;->RSS_14:Lepu;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lepu;->RSS_EXPANDED:Lepu;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lero;->a:Ljava/util/Set;

    .line 49
    sget-object v0, Lepu;->CODE_39:Lepu;

    sget-object v1, Lepu;->CODE_93:Lepu;

    sget-object v2, Lepu;->CODE_128:Lepu;

    sget-object v3, Lepu;->ITF:Lepu;

    sget-object v4, Lepu;->CODABAR:Lepu;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lero;->b:Ljava/util/Set;

    .line 54
    sget-object v0, Lero;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lero;->h:Ljava/util/Set;

    .line 55
    sget-object v0, Lero;->h:Ljava/util/Set;

    sget-object v1, Lero;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lero;->i:Ljava/util/Map;

    .line 62
    sget-object v0, Lero;->i:Ljava/util/Map;

    const-string v1, "ONE_D_MODE"

    sget-object v2, Lero;->h:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lero;->i:Ljava/util/Map;

    const-string v1, "PRODUCT_MODE"

    sget-object v2, Lero;->a:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lero;->i:Ljava/util/Map;

    const-string v1, "QR_CODE_MODE"

    sget-object v2, Lero;->c:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lero;->i:Ljava/util/Map;

    const-string v1, "DATA_MATRIX_MODE"

    sget-object v2, Lero;->d:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lero;->i:Ljava/util/Map;

    const-string v1, "AZTEC_MODE"

    sget-object v2, Lero;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lero;->i:Ljava/util/Map;

    const-string v1, "PDF417_MODE"

    sget-object v2, Lero;->f:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    const-string v1, "SCAN_FORMATS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    sget-object v0, Lero;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 79
    :cond_0
    const-string v1, "SCAN_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lero;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lepu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    const-class v0, Lepu;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 86
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-static {v0}, Lepu;->valueOf(Ljava/lang/String;)Lepu;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 94
    :cond_0
    if-eqz p1, :cond_2

    .line 95
    sget-object v0, Lero;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 97
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 89
    goto :goto_1

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
