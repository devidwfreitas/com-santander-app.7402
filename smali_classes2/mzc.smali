.class public Lmzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field protected a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Lmzb;


# direct methods
.method public constructor <init>(Lmzb;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lmzc;->b:Lmzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object v0, p1, Lmzb;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    .line 99
    return-void
.end method


# virtual methods
.method public a()Lmzc;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 140
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lmzc;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    return-object p0
.end method

.method public a(Ljava/lang/String;F)Lmzc;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lmzc;->b:Lmzb;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmzb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lmzc;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lmzc;->b:Lmzb;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmzb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lmzc;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lmzc;->b:Lmzb;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmzb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lmzc;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lmzc;->b:Lmzb;

    invoke-virtual {v1, p2}, Lmzb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lmzc;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lmzc;->b:Lmzb;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmzb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    return-object p0
.end method

.method public apply()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method public synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lmzc;->a()Lmzc;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lmzc;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lmzc;->a(Ljava/lang/String;Z)Lmzc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lmzc;->a(Ljava/lang/String;F)Lmzc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lmzc;->a(Ljava/lang/String;I)Lmzc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lmzc;->a(Ljava/lang/String;J)Lmzc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lmzc;->a(Ljava/lang/String;Ljava/lang/String;)Lmzc;

    move-result-object v0

    return-object v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class does not work with String Sets."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lmzc;->a(Ljava/lang/String;)Lmzc;

    move-result-object v0

    return-object v0
.end method
