.class public Lmwr;
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

.method public static a(Landroid/widget/EditText;Lmwq;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lmws;

    invoke-direct {v0, p1, p0}, Lmws;-><init>(Lmwq;Landroid/widget/EditText;)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    const-string v0, "[^0-9]*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
