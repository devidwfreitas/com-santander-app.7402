.class public final enum Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

.field public static final enum APK_EXTRACTION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

.field public static final enum INSTRUMENTATION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

.field public static final enum LOAD_CONFIGURATION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

.field public static final enum PACK:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

.field public static final enum SIGN:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    const-string v1, "LOAD_CONFIGURATION"

    invoke-direct {v0, v1, v2}, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->LOAD_CONFIGURATION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    .line 12
    new-instance v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    const-string v1, "APK_EXTRACTION"

    invoke-direct {v0, v1, v3}, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->APK_EXTRACTION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    .line 13
    new-instance v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    const-string v1, "INSTRUMENTATION"

    invoke-direct {v0, v1, v4}, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->INSTRUMENTATION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    .line 14
    new-instance v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    const-string v1, "PACK"

    invoke-direct {v0, v1, v5}, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->PACK:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    .line 15
    new-instance v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    const-string v1, "SIGN"

    invoke-direct {v0, v1, v6}, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->SIGN:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    sget-object v1, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->LOAD_CONFIGURATION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->APK_EXTRACTION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->INSTRUMENTATION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->PACK:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->SIGN:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->$VALUES:[Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    return-object v0
.end method

.method public static values()[Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->$VALUES:[Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-virtual {v0}, [Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    return-object v0
.end method
