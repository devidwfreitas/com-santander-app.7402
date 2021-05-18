.class public Lbr/com/santander/uisdk/edittext/SantanderEmailEditText;
.super Lbr/com/santander/uisdk/edittext/SantanderEditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEmailEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEmailEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lbr/com/santander/uisdk/edittext/SantanderEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEmailEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lalx;->SantanderCurrencyEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 61
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 5

    .prologue
    .line 43
    invoke-super {p0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a()Lang;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderEmailEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {p0, v1}, Lbr/com/santander/uisdk/edittext/SantanderEmailEditText;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lane;

    sget-object v2, Lanf;->INVALID_EMAIL:Lanf;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderEmailEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lalv;->invalid_field_email:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lane;-><init>(Lanf;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lang;->a(Lane;)V

    .line 51
    :cond_0
    return-object v0
.end method
