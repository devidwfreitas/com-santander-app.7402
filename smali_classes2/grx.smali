.class Lgrx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgrs;


# direct methods
.method constructor <init>(Lgrs;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lgrx;->a:Lgrs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lgrx;->a:Lgrs;

    iget-object v0, v0, Lgrs;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 551
    return-void
.end method
