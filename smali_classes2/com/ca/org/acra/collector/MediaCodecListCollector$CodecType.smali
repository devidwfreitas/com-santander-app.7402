.class final enum Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;
.super Ljava/lang/Enum;
.source "MediaCodecListCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/org/acra/collector/MediaCodecListCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum AAC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum AVC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum H263:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

.field public static final enum MPEG4:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "AVC"

    invoke-direct {v0, v1, v2}, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->AVC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    new-instance v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "H263"

    invoke-direct {v0, v1, v3}, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->H263:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    new-instance v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "MPEG4"

    invoke-direct {v0, v1, v4}, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->MPEG4:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    new-instance v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    const-string v1, "AAC"

    invoke-direct {v0, v1, v5}, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->AAC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    sget-object v1, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->AVC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->H263:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->MPEG4:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->AAC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->$VALUES:[Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    return-object v0
.end method

.method public static values()[Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->$VALUES:[Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    invoke-virtual {v0}, [Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    return-object v0
.end method
