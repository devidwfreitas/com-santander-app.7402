.class Lcmb;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private final a:Lcmc;

.field private final b:Lcmd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcmc;

    invoke-direct {v0, p1}, Lcmc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcmb;->a:Lcmc;

    .line 75
    new-instance v0, Lcmd;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcmd;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcmb;->b:Lcmd;

    .line 76
    return-void
.end method


# virtual methods
.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcmb;->a:Lcmc;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcmb;->b:Lcmd;

    return-object v0
.end method
