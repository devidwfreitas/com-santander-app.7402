.class public Lbr/com/santander/uisdk/edittext/SantanderEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    .line 32
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    .line 37
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    .line 43
    invoke-direct {p0, p1, p2}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 121
    sget-object v0, Lalx;->SantanderEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    sget v1, Lalx;->SantanderEditText_required:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    .line 123
    sget v1, Lalx;->SantanderEditText_max_length:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    .line 124
    sget v1, Lalx;->SantanderEditText_min_length:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    .line 125
    return-void
.end method


# virtual methods
.method public a()Lang;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 51
    new-instance v0, Lang;

    invoke-direct {v0, p0}, Lang;-><init>(Lbr/com/santander/uisdk/edittext/SantanderEditText;)V

    .line 52
    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    new-instance v2, Lane;

    sget-object v3, Lanf;->REQUIRED:Lanf;

    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lalv;->invalid_field_required:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lane;-><init>(Lanf;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v2}, Lang;->a(Lane;)V

    .line 61
    :cond_1
    iget-object v2, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 62
    new-instance v2, Lane;

    sget-object v3, Lanf;->MAX_LENGTH:Lanf;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lalv;->invalid_field_max_length:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lane;-><init>(Lanf;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Lang;->a(Lane;)V

    .line 67
    :cond_2
    iget-object v2, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 68
    new-instance v1, Lane;

    sget-object v2, Lanf;->MIN_LENGTH:Lanf;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lalv;->invalid_field_min_length:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lane;-><init>(Lanf;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Lang;->a(Lane;)V

    .line 72
    :cond_3
    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public setMaxLength(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->b:Ljava/lang/Integer;

    .line 105
    return-void
.end method

.method public setMinLength(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->c:Ljava/lang/Integer;

    .line 113
    return-void
.end method

.method public setRequired(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lbr/com/santander/uisdk/edittext/SantanderEditText;->a:Ljava/lang/Boolean;

    .line 89
    return-void
.end method
