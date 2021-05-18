.class public Lfyd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/CheckBox;

.field private d:Lfyk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfyd;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfyd;->c:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic a(Lfyd;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfyd;->b:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lfyd;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfyd;->a:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lfyd;)Lfyk;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfyd;->d:Lfyk;

    return-object v0
.end method

.method static synthetic a(Lfyd;Lfyk;)Lfyk;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfyd;->d:Lfyk;

    return-object p1
.end method

.method static synthetic b(Lfyd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfyd;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lfyd;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfyd;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lfyd;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfyd;->c:Landroid/widget/CheckBox;

    return-object v0
.end method
