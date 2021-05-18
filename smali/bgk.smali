.class public Lbgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field protected a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Lbgj;


# direct methods
.method public constructor <init>(Lbgj;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lbgk;->b:Lbgj;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lbgj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 134
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v0, p1}, Lbgj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lbgk;->b:Lbgj;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v0, p1}, Lbgj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lbgk;->b:Lbgj;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v0, p1}, Lbgj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lbgk;->b:Lbgj;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v0, p1}, Lbgj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lbgk;->b:Lbgj;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v0, p1}, Lbgj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v2, p2}, Lbgj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v0, p1}, Lbgj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lbgk;->b:Lbgj;

    invoke-virtual {v0, p1}, Lbgj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lbgk;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    return-object p0
.end method
