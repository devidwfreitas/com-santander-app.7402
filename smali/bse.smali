.class public final enum Lbse;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbse;

.field public static final enum DEVICE_AUTH:Lbse;

.field public static final enum KATANA_ONLY:Lbse;

.field public static final enum NATIVE_ONLY:Lbse;

.field public static final enum NATIVE_WITH_FALLBACK:Lbse;

.field public static final enum WEB_ONLY:Lbse;

.field public static final enum WEB_VIEW_ONLY:Lbse;


# instance fields
.field private final allowsCustomTabAuth:Z

.field private final allowsDeviceAuth:Z

.field private final allowsFacebookLiteAuth:Z

.field private final allowsGetTokenAuth:Z

.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lbse;

    const-string v1, "NATIVE_WITH_FALLBACK"

    move v4, v3

    move v5, v3

    move v6, v2

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lbse;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lbse;->NATIVE_WITH_FALLBACK:Lbse;

    .line 37
    new-instance v4, Lbse;

    const-string v5, "NATIVE_ONLY"

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lbse;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lbse;->NATIVE_ONLY:Lbse;

    .line 42
    new-instance v4, Lbse;

    const-string v5, "KATANA_ONLY"

    move v6, v13

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lbse;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lbse;->KATANA_ONLY:Lbse;

    .line 47
    new-instance v4, Lbse;

    const-string v5, "WEB_ONLY"

    move v6, v14

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v3

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lbse;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lbse;->WEB_ONLY:Lbse;

    .line 52
    new-instance v4, Lbse;

    const-string v5, "WEB_VIEW_ONLY"

    move v6, v15

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lbse;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lbse;->WEB_VIEW_ONLY:Lbse;

    .line 59
    new-instance v4, Lbse;

    const-string v5, "DEVICE_AUTH"

    const/4 v6, 0x5

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lbse;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lbse;->DEVICE_AUTH:Lbse;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lbse;

    sget-object v1, Lbse;->NATIVE_WITH_FALLBACK:Lbse;

    aput-object v1, v0, v2

    sget-object v1, Lbse;->NATIVE_ONLY:Lbse;

    aput-object v1, v0, v3

    sget-object v1, Lbse;->KATANA_ONLY:Lbse;

    aput-object v1, v0, v13

    sget-object v1, Lbse;->WEB_ONLY:Lbse;

    aput-object v1, v0, v14

    sget-object v1, Lbse;->WEB_VIEW_ONLY:Lbse;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lbse;->DEVICE_AUTH:Lbse;

    aput-object v2, v0, v1

    sput-object v0, Lbse;->$VALUES:[Lbse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-boolean p3, p0, Lbse;->allowsGetTokenAuth:Z

    .line 76
    iput-boolean p4, p0, Lbse;->allowsKatanaAuth:Z

    .line 77
    iput-boolean p5, p0, Lbse;->allowsWebViewAuth:Z

    .line 78
    iput-boolean p6, p0, Lbse;->allowsDeviceAuth:Z

    .line 79
    iput-boolean p7, p0, Lbse;->allowsCustomTabAuth:Z

    .line 80
    iput-boolean p8, p0, Lbse;->allowsFacebookLiteAuth:Z

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbse;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbse;

    return-object v0
.end method

.method public static values()[Lbse;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lbse;->$VALUES:[Lbse;

    invoke-virtual {v0}, [Lbse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbse;

    return-object v0
.end method


# virtual methods
.method public allowsCustomTabAuth()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lbse;->allowsCustomTabAuth:Z

    return v0
.end method

.method public allowsDeviceAuth()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lbse;->allowsDeviceAuth:Z

    return v0
.end method

.method public allowsFacebookLiteAuth()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lbse;->allowsFacebookLiteAuth:Z

    return v0
.end method

.method public allowsGetTokenAuth()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lbse;->allowsGetTokenAuth:Z

    return v0
.end method

.method public allowsKatanaAuth()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lbse;->allowsKatanaAuth:Z

    return v0
.end method

.method public allowsWebViewAuth()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lbse;->allowsWebViewAuth:Z

    return v0
.end method
