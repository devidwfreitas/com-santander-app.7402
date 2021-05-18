.class public Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field public static final a:I = 0xd2


# instance fields
.field private b:Lmbp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lmbp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmbp;-><init>(Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;Lmbo;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->b:Lmbp;

    .line 24
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Lmbp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmbp;-><init>(Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;Lmbo;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->b:Lmbp;

    .line 29
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v0, Lmbp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmbp;-><init>(Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;Lmbo;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->b:Lmbp;

    .line 34
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->b:Lmbp;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->b:Lmbp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd2

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->setFilters([Landroid/text/InputFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setFilters([Landroid/text/InputFilter;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 52
    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 53
    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->b:Lmbp;

    if-ne v4, v5, :cond_1

    .line 58
    :goto_1
    if-eqz v0, :cond_0

    .line 59
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    .line 60
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/EmojiExcludeEditText;->b:Lmbp;

    aput-object v2, v0, v1

    move-object p1, v0

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_2
    return-void

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method
