package org.example.domainmodel.scoping

import java.util.ArrayList
import org.eclipse.xtext.naming.QualifiedName
import org.eclipse.xtext.scoping.impl.ImportNormalizer

@SuppressWarnings("restriction")
class ImplicitImportsScopeProvider extends org.eclipse.xtext.xbase.scoping.XImportSectionNamespaceScopeProvider {
    override getImplicitImports(boolean ignoreCase) {
        val normalizers = new ArrayList<ImportNormalizer>(super.getImplicitImports(ignoreCase));
        normalizers.add(doCreateImportNormalizer(QualifiedName.create("org.example.domainmodel.lib"), true, false))
        return normalizers;
    }
}