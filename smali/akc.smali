.class final Lakc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lakb;


# direct methods
.method constructor <init>(Lakb;)V
    .locals 0

    iput-object p1, p0, Lakc;->a:Lakb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lakc;->a:Lakb;

    invoke-static {v0}, Lakb;->a(Lakb;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
