.class public Lbr/com/santander/uisdk/edittext/SantanderCurrencyEditText;
.super Lbr/com/santander/uisdk/edittext/SantanderNumberEditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/edittext/SantanderNumberEditText;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderNumberEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderCurrencyEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lbr/com/santander/uisdk/edittext/SantanderNumberEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderCurrencyEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/santander/uisdk/edittext/SantanderNumberEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderCurrencyEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lalx;->SantanderCurrencyEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lbr/com/santander/uisdk/edittext/SantanderNumberEditText;->a()Lang;

    move-result-object v0

    .line 36
    return-object v0
.end method
