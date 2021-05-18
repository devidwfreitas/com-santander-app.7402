.class public Lbr/com/santander/uisdk/textview/SantanderCnpjTextView;
.super Lbr/com/santander/uisdk/textview/SantanderTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbr/com/santander/uisdk/textview/SantanderCnpjTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderCnpjTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderCnpjTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lanx;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "##.###.###/####-##"

    invoke-static {v0, v1}, Lanx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-super {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 48
    :cond_0
    return-void
.end method
