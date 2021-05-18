.class public Lbr/com/santander/uisdk/textview/SantanderCpfTextView;
.super Lbr/com/santander/uisdk/textview/SantanderTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbr/com/santander/uisdk/textview/SantanderCpfTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderCpfTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lbr/com/santander/uisdk/textview/SantanderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/textview/SantanderCpfTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lanx;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "###.###.###-##"

    invoke-static {v0, v1}, Lanx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-super {p0, v0, p2}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 49
    :cond_0
    return-void
.end method
