.class public abstract Lnam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "###.###.###-##"

.field private static final b:Ljava/lang/String; = "##.###.###/####-##"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/EditText;Lnap;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lnan;

    invoke-direct {v0, p1, p0}, Lnan;-><init>(Lnap;Landroid/widget/EditText;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string v0, "[^0-9]*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lnam;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const-string v0, ""

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 32
    const-string v0, "##.###.###/####-##"

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v0, "###.###.###-##"

    goto :goto_0
.end method
