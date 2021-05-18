.class Lvn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lve;

.field final synthetic b:Lvi;


# direct methods
.method constructor <init>(Lvi;Lve;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lvn;->b:Lvi;

    iput-object p2, p0, Lvn;->a:Lve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lvn;->b:Lvi;

    iget-object v1, p0, Lvn;->a:Lve;

    invoke-static {v0, v1}, Lvi;->a(Lvi;Lve;)V

    .line 164
    return-void
.end method
