.class public final enum Laqa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laqa;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laqa;

.field public static final enum DOC:Laqa;

.field public static final enum DOCX:Laqa;

.field public static final enum JPEG:Laqa;

.field public static final enum JPG:Laqa;

.field public static final enum PDF:Laqa;

.field public static final enum PNG:Laqa;

.field public static final enum PPT:Laqa;

.field public static final enum PPTX:Laqa;

.field public static final enum XLS:Laqa;

.field public static final enum XLSX:Laqa;


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/16 v4, 0x8

    .line 9
    new-instance v0, Laqa;

    const-string v1, "JPEG"

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v7, v2}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->JPEG:Laqa;

    .line 10
    new-instance v0, Laqa;

    const-string v1, "JPG"

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v8, v2}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->JPG:Laqa;

    .line 11
    new-instance v0, Laqa;

    const-string v1, "PNG"

    const/4 v2, 0x2

    new-array v3, v6, [B

    fill-array-data v3, :array_2

    invoke-direct {v0, v1, v2, v3}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->PNG:Laqa;

    .line 12
    new-instance v0, Laqa;

    const-string v1, "PDF"

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v5, v2}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->PDF:Laqa;

    .line 13
    new-instance v0, Laqa;

    const-string v1, "DOC"

    new-array v2, v4, [B

    fill-array-data v2, :array_4

    invoke-direct {v0, v1, v6, v2}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->DOC:Laqa;

    .line 14
    new-instance v0, Laqa;

    const-string v1, "PPT"

    const/4 v2, 0x5

    new-array v3, v4, [B

    fill-array-data v3, :array_5

    invoke-direct {v0, v1, v2, v3}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->PPT:Laqa;

    .line 15
    new-instance v0, Laqa;

    const-string v1, "XLS"

    const/4 v2, 0x6

    new-array v3, v4, [B

    fill-array-data v3, :array_6

    invoke-direct {v0, v1, v2, v3}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->XLS:Laqa;

    .line 16
    new-instance v0, Laqa;

    const-string v1, "DOCX"

    const/4 v2, 0x7

    new-array v3, v4, [B

    fill-array-data v3, :array_7

    invoke-direct {v0, v1, v2, v3}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->DOCX:Laqa;

    .line 17
    new-instance v0, Laqa;

    const-string v1, "XLSX"

    new-array v2, v4, [B

    fill-array-data v2, :array_8

    invoke-direct {v0, v1, v4, v2}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->XLSX:Laqa;

    .line 18
    new-instance v0, Laqa;

    const-string v1, "PPTX"

    const/16 v2, 0x9

    new-array v3, v4, [B

    fill-array-data v3, :array_9

    invoke-direct {v0, v1, v2, v3}, Laqa;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Laqa;->PPTX:Laqa;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Laqa;

    sget-object v1, Laqa;->JPEG:Laqa;

    aput-object v1, v0, v7

    sget-object v1, Laqa;->JPG:Laqa;

    aput-object v1, v0, v8

    const/4 v1, 0x2

    sget-object v2, Laqa;->PNG:Laqa;

    aput-object v2, v0, v1

    sget-object v1, Laqa;->PDF:Laqa;

    aput-object v1, v0, v5

    sget-object v1, Laqa;->DOC:Laqa;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Laqa;->PPT:Laqa;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Laqa;->XLS:Laqa;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Laqa;->DOCX:Laqa;

    aput-object v2, v0, v1

    sget-object v1, Laqa;->XLSX:Laqa;

    aput-object v1, v0, v4

    const/16 v1, 0x9

    sget-object v2, Laqa;->PPTX:Laqa;

    aput-object v2, v0, v1

    sput-object v0, Laqa;->$VALUES:[Laqa;

    return-void

    .line 9
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 10
    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 11
    :array_2
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data

    .line 12
    :array_3
    .array-data 1
        0x25t
        0x50t
        0x44t
        0x46t
    .end array-data

    .line 13
    :array_4
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data

    .line 14
    :array_5
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data

    .line 15
    :array_6
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data

    .line 16
    :array_7
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x6t
        0x0t
    .end array-data

    .line 17
    :array_8
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x6t
        0x0t
    .end array-data

    .line 18
    :array_9
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x6t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Laqa;->value:[B

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laqa;
    .locals 1

    .prologue
    .line 7
    const-class v0, Laqa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laqa;

    return-object v0
.end method

.method public static values()[Laqa;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Laqa;->$VALUES:[Laqa;

    invoke-virtual {v0}, [Laqa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laqa;

    return-object v0
.end method


# virtual methods
.method public getValue()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laqa;->value:[B

    return-object v0
.end method
