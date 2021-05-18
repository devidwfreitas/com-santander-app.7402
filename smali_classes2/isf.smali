.class Lisf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lise;


# direct methods
.method constructor <init>(Lise;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lisf;->a:Lise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 141
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lisf;->a:Lise;

    invoke-static {v0}, Lise;->a(Lise;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lisf;->a:Lise;

    invoke-virtual {v0}, Lise;->d()V

    goto :goto_0
.end method
