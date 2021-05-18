.class public Lakh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field protected a:Landroid/content/SharedPreferences$Editor;

.field final synthetic b:Lakg;


# direct methods
.method public constructor <init>(Lakg;)V
    .locals 1

    iput-object p1, p0, Lakh;->b:Lakg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lakg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a()Lakh;
    .locals 1

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lakh;
    .locals 1

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public a(Ljava/lang/String;F)Lakh;
    .locals 3

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lakh;->b:Lakg;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lakh;
    .locals 3

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lakh;->b:Lakg;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lakh;
    .locals 4

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lakh;->b:Lakg;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lakh;
    .locals 2

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lakh;->b:Lakg;

    invoke-virtual {v1, p2}, Lakg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lakh;
    .locals 3

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lakh;->b:Lakg;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lakg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public apply()V
    .locals 1

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0}, Lakh;->a()Lakh;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .locals 1

    iget-object v0, p0, Lakh;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lakh;->a(Ljava/lang/String;Z)Lakh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lakh;->a(Ljava/lang/String;F)Lakh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lakh;->a(Ljava/lang/String;I)Lakh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lakh;->a(Ljava/lang/String;J)Lakh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lakh;->a(Ljava/lang/String;Ljava/lang/String;)Lakh;

    move-result-object v0

    return-object v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class does not work with String Sets."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1}, Lakh;->a(Ljava/lang/String;)Lakh;

    move-result-object v0

    return-object v0
.end method
