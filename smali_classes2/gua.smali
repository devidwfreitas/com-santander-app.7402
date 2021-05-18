.class Lgua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgxa;

.field final synthetic b:Lgtz;


# direct methods
.method constructor <init>(Lgtz;Lgxa;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lgua;->b:Lgtz;

    iput-object p2, p0, Lgua;->a:Lgxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lgua;->b:Lgtz;

    invoke-static {v0}, Lgtz;->a(Lgtz;)Lguf;

    move-result-object v0

    iget-object v1, p0, Lgua;->a:Lgxa;

    invoke-interface {v0, v1}, Lguf;->a(Lgxa;)V

    .line 74
    return-void
.end method
