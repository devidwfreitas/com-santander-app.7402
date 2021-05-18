.class Lbsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbsg;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lbsl;


# direct methods
.method constructor <init>(Lbsl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lbsn;->b:Lbsl;

    iput-object p2, p0, Lbsn;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lbsn;->a:Landroid/view/View;

    sget v1, Lbju;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lbsn;->a:Landroid/view/View;

    sget v1, Lbju;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method
