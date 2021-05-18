.class public Lcom/ca/org/acra/collector/MediaCodecListCollector;
.super Ljava/lang/Object;
.source "MediaCodecListCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;
    }
.end annotation


# static fields
.field private static final AAC_TYPES:[Ljava/lang/String;

.field private static final AVC_TYPES:[Ljava/lang/String;

.field private static final COLOR_FORMAT_PREFIX:Ljava/lang/String; = "COLOR_"

.field private static final H263_TYPES:[Ljava/lang/String;

.field private static final MPEG4_TYPES:[Ljava/lang/String;

.field private static codecCapabilitiesClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static colorFormatsField:Ljava/lang/reflect/Field;

.field private static getCapabilitiesForTypeMethod:Ljava/lang/reflect/Method;

.field private static getCodecInfoAtMethod:Ljava/lang/reflect/Method;

.field private static getNameMethod:Ljava/lang/reflect/Method;

.field private static getSupportedTypesMethod:Ljava/lang/reflect/Method;

.field private static isEncoderMethod:Ljava/lang/reflect/Method;

.field private static levelField:Ljava/lang/reflect/Field;

.field private static mAACProfileValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAVCLevelValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAVCProfileValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mColorFormatValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mH263LevelValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mH263ProfileValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMPEG4LevelValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMPEG4ProfileValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mediaCodecInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mediaCodecListClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static profileField:Ljava/lang/reflect/Field;

.field private static profileLevelsField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 41
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "mp4"

    aput-object v4, v3, v2

    const-string v4, "mpeg4"

    aput-object v4, v3, v6

    const-string v4, "MP4"

    aput-object v4, v3, v7

    const-string v4, "MPEG4"

    aput-object v4, v3, v8

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->MPEG4_TYPES:[Ljava/lang/String;

    .line 42
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "avc"

    aput-object v4, v3, v2

    const-string v4, "h264"

    aput-object v4, v3, v6

    const-string v4, "AVC"

    aput-object v4, v3, v7

    const-string v4, "H264"

    aput-object v4, v3, v8

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->AVC_TYPES:[Ljava/lang/String;

    .line 43
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "h263"

    aput-object v4, v3, v2

    const-string v4, "H263"

    aput-object v4, v3, v6

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->H263_TYPES:[Ljava/lang/String;

    .line 44
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "aac"

    aput-object v4, v3, v2

    const-string v4, "AAC"

    aput-object v4, v3, v6

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->AAC_TYPES:[Ljava/lang/String;

    .line 46
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecListClass:Ljava/lang/Class;

    .line 47
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getCodecInfoAtMethod:Ljava/lang/reflect/Method;

    .line 48
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecInfoClass:Ljava/lang/Class;

    .line 49
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getNameMethod:Ljava/lang/reflect/Method;

    .line 50
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->isEncoderMethod:Ljava/lang/reflect/Method;

    .line 51
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getSupportedTypesMethod:Ljava/lang/reflect/Method;

    .line 52
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getCapabilitiesForTypeMethod:Ljava/lang/reflect/Method;

    .line 53
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->codecCapabilitiesClass:Ljava/lang/Class;

    .line 54
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->colorFormatsField:Ljava/lang/reflect/Field;

    .line 55
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->profileLevelsField:Ljava/lang/reflect/Field;

    .line 56
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->profileField:Ljava/lang/reflect/Field;

    .line 57
    sput-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->levelField:Ljava/lang/reflect/Field;

    .line 58
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mColorFormatValues:Landroid/util/SparseArray;

    .line 59
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAVCLevelValues:Landroid/util/SparseArray;

    .line 60
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAVCProfileValues:Landroid/util/SparseArray;

    .line 61
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mH263LevelValues:Landroid/util/SparseArray;

    .line 62
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mH263ProfileValues:Landroid/util/SparseArray;

    .line 63
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mMPEG4LevelValues:Landroid/util/SparseArray;

    .line 64
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mMPEG4ProfileValues:Landroid/util/SparseArray;

    .line 65
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAACProfileValues:Landroid/util/SparseArray;

    .line 70
    :try_start_0
    const-string v3, "android.media.MediaCodecList"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecListClass:Ljava/lang/Class;

    .line 72
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecListClass:Ljava/lang/Class;

    const-string v4, "getCodecInfoAt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getCodecInfoAtMethod:Ljava/lang/reflect/Method;

    .line 73
    const-string v3, "android.media.MediaCodecInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecInfoClass:Ljava/lang/Class;

    .line 74
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecInfoClass:Ljava/lang/Class;

    const-string v4, "getName"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getNameMethod:Ljava/lang/reflect/Method;

    .line 75
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecInfoClass:Ljava/lang/Class;

    const-string v4, "isEncoder"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->isEncoderMethod:Ljava/lang/reflect/Method;

    .line 76
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecInfoClass:Ljava/lang/Class;

    const-string v4, "getSupportedTypes"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getSupportedTypesMethod:Ljava/lang/reflect/Method;

    .line 77
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecInfoClass:Ljava/lang/Class;

    const-string v4, "getCapabilitiesForType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getCapabilitiesForTypeMethod:Ljava/lang/reflect/Method;

    .line 78
    const-string v3, "android.media.MediaCodecInfo$CodecCapabilities"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->codecCapabilitiesClass:Ljava/lang/Class;

    .line 79
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->codecCapabilitiesClass:Ljava/lang/Class;

    const-string v4, "colorFormats"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->colorFormatsField:Ljava/lang/reflect/Field;

    .line 80
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->codecCapabilitiesClass:Ljava/lang/Class;

    const-string v4, "profileLevels"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->profileLevelsField:Ljava/lang/reflect/Field;

    .line 83
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->codecCapabilitiesClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    .local v1, "f":Ljava/lang/reflect/Field;
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 84
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "COLOR_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    sget-object v6, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mColorFormatValues:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string v3, "android.media.MediaCodecInfo$CodecProfileLevel"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_9

    aget-object v1, v3, v2

    .line 93
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AVCLevel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    sget-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAVCLevelValues:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AVCProfile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    sget-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAVCProfileValues:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 115
    .end local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 129
    :goto_3
    return-void

    .line 98
    .restart local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H263Level"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 99
    sget-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mH263LevelValues:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 117
    .end local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    goto :goto_3

    .line 100
    .restart local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H263Profile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 101
    sget-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mH263ProfileValues:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 119
    .end local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    goto :goto_3

    .line 102
    .restart local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MPEG4Level"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 103
    sget-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mMPEG4LevelValues:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 121
    .end local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v2

    goto :goto_3

    .line 104
    .restart local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MPEG4Profile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 105
    sget-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mMPEG4ProfileValues:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 123
    .end local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v2

    goto :goto_3

    .line 106
    .restart local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    sget-object v5, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAACProfileValues:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 125
    .end local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_5
    move-exception v2

    goto/16 :goto_3

    .line 112
    .restart local v0    # "codecProfileLevelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    const-string v2, "profile"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/ca/org/acra/collector/MediaCodecListCollector;->profileField:Ljava/lang/reflect/Field;

    .line 113
    const-string v2, "level"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/ca/org/acra/collector/MediaCodecListCollector;->levelField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto/16 :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collecMediaCodecList()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v4, "result":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecListClass:Ljava/lang/Class;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecInfoClass:Ljava/lang/Class;

    if-eqz v7, :cond_1

    .line 143
    :try_start_0
    sget-object v7, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mediaCodecListClass:Ljava/lang/Class;

    const-string v9, "getCodecCount"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 146
    .local v1, "codecCount":I
    const/4 v3, 0x0

    .line 147
    .local v3, "codecInfo":Ljava/lang/Object;
    const/4 v2, 0x0

    .end local v3    # "codecInfo":Ljava/lang/Object;
    .local v2, "codecIdx":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 148
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    sget-object v7, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getCodecInfoAtMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 150
    .restart local v3    # "codecInfo":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getNameMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v7, "isEncoder: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/ca/org/acra/collector/MediaCodecListCollector;->isEncoderMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    sget-object v7, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getSupportedTypesMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 153
    .local v5, "supportedTypes":[Ljava/lang/String;
    const-string v7, "Supported types: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v6, v5, v7

    .line 155
    .local v6, "type":Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/ca/org/acra/collector/MediaCodecListCollector;->collectCapabilitiesForType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 157
    .end local v6    # "type":Ljava/lang/String;
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 163
    .end local v1    # "codecCount":I
    .end local v2    # "codecIdx":I
    .end local v3    # "codecInfo":Ljava/lang/Object;
    .end local v5    # "supportedTypes":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 167
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 161
    :catch_1
    move-exception v7

    goto :goto_2

    .line 159
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method private static collectCapabilitiesForType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "codecInfo"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x2c

    const/16 v11, 0x2d

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v7, "result":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getCapabilitiesForTypeMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v8, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "codecCapabilities":Ljava/lang/Object;
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->colorFormatsField:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object v3, v8

    check-cast v3, [I

    .line 190
    .local v3, "colorFormats":[I
    array-length v8, v3

    if-lez v8, :cond_2

    .line 191
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " color formats:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v3

    if-ge v4, v8, :cond_1

    .line 193
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mColorFormatValues:Landroid/util/SparseArray;

    aget v9, v3, v4

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_0

    .line 195
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .end local v4    # "i":I
    :cond_2
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->profileLevelsField:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v1, v8

    check-cast v1, [Ljava/lang/Object;

    .line 203
    .local v1, "codecProfileLevels":[Ljava/lang/Object;
    array-length v8, v1

    if-lez v8, :cond_6

    .line 204
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " profile levels:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v8, v1

    if-ge v4, v8, :cond_5

    .line 207
    invoke-static {p0}, Lcom/ca/org/acra/collector/MediaCodecListCollector;->identifyCodecType(Ljava/lang/Object;)Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    move-result-object v2

    .line 208
    .local v2, "codecType":Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->profileField:Ljava/lang/reflect/Field;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 209
    .local v6, "profileValue":I
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->levelField:Ljava/lang/reflect/Field;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 211
    .local v5, "levelValue":I
    if-nez v2, :cond_3

    .line 213
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    :cond_3
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector$1;->$SwitchMap$com$ca$org$acra$collector$MediaCodecListCollector$CodecType:[I

    invoke-virtual {v2}, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 236
    :goto_2
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_4

    .line 237
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 218
    :pswitch_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAVCProfileValues:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAVCLevelValues:Landroid/util/SparseArray;

    .line 219
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 222
    :pswitch_1
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mH263ProfileValues:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mH263LevelValues:Landroid/util/SparseArray;

    .line 223
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 226
    :pswitch_2
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mMPEG4ProfileValues:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mMPEG4LevelValues:Landroid/util/SparseArray;

    .line 227
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 230
    :pswitch_3
    sget-object v8, Lcom/ca/org/acra/collector/MediaCodecListCollector;->mAACProfileValues:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 241
    .end local v2    # "codecType":Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;
    .end local v5    # "levelValue":I
    .end local v6    # "profileValue":I
    :cond_5
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .end local v4    # "i":I
    :cond_6
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static identifyCodecType(Ljava/lang/Object;)Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;
    .locals 7
    .param p0, "codecInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 257
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->getNameMethod:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, "name":Ljava/lang/String;
    sget-object v4, Lcom/ca/org/acra/collector/MediaCodecListCollector;->AVC_TYPES:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 259
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    sget-object v2, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->AVC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    .line 279
    .end local v1    # "token":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 258
    .restart local v1    # "token":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "token":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/ca/org/acra/collector/MediaCodecListCollector;->H263_TYPES:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 264
    .restart local v1    # "token":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    sget-object v2, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->H263:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    goto :goto_1

    .line 263
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 268
    .end local v1    # "token":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/ca/org/acra/collector/MediaCodecListCollector;->MPEG4_TYPES:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_5

    aget-object v1, v4, v3

    .line 269
    .restart local v1    # "token":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 270
    sget-object v2, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->MPEG4:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    goto :goto_1

    .line 268
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 273
    .end local v1    # "token":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/ca/org/acra/collector/MediaCodecListCollector;->AAC_TYPES:[Ljava/lang/String;

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 274
    .restart local v1    # "token":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 275
    sget-object v2, Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;->AAC:Lcom/ca/org/acra/collector/MediaCodecListCollector$CodecType;

    goto :goto_1

    .line 273
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 279
    .end local v1    # "token":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method
