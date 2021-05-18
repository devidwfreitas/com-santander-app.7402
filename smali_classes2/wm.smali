.class Lwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lwk;


# direct methods
.method constructor <init>(Lwk;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lwm;->a:Lwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lwm;->a:Lwk;

    iget-object v0, v0, Lwk;->a:Lwh;

    invoke-static {v0}, Lwh;->b(Lwh;)V

    .line 167
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lwm;->a:Lwk;

    iget-object v0, v0, Lwk;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
.end method
