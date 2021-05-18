.class final Lasf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1121
    iput-boolean p1, p0, Lasf;->a:Z

    iput-object p2, p0, Lasf;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lasf;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasf;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lasf;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1127
    :cond_0
    return-void
.end method
